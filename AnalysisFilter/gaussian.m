 function f=gaussian(N,sigma)
 

  hw=floor(N/2);
  scale=0;
  sig=(2*(sigma*sigma));
  hw1=hw+1;
  for i=-hw:hw
      for j=-hw:hw
          ex=exp(-((i*i)/sig)-((j*j)/sig));
          mask(i+hw1,j+hw1)=ex;
          scale=scale+ex;
      end
  end
 
  f=mask./scale;

