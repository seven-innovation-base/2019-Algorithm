function [ alpha ] = armijo1( t0 )
%��armijo׼���������ʵĲ�������
%if alpha=beta^mmax, the length might be too little,and there would be a hint for users. 


beta=0.5;rho=0.2; %defining the parameters

m=0;mmax=20; 
%mΪ����������mmaxΪ�����������

while(m<=mmax)
    
    gk=fun_grad1(t0); %���㺯��fun1��t0�����ݶ�
    
    
    dk=-gk; %�½�����Ϊ������ֵ
    
    t1=t0+(beta^m)*dk; %������һ���ȡֵ

    if(fun1(t1) <= fun1(t0) + rho*(beta^m)*gk*dk')
        %����mֵ�Ƿ����
        
       alpha=beta^m;return; 
       %������������alpha����������
       
    end
    
    t0=t1; m=m+1;
end

alpha=beta^m;

disp('alpha is already (1/2)^11,the step may be too little');
%���в�����С������

end

