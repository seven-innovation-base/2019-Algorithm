function [ tk ] = steepest1( t0,eps )
% Github : https://github.com/liferjane/Steepest-descent-algorithm-Matlab-
% �����½���������
% ��ֵ��t0������Ҫ�󣬵�����ֹ��������eps


k=0;kmax=5000; % ��������k������������kmax

while(k<kmax)
    
    gk=fun_grad1(t0); % �����ݶ�
    
    if(abs(gk)<eps) % �ж��Ƿ���Ͼ���Ҫ�� 
        
       tk=t0; 
       
       disp(tk);return; %tk��Ϊ����ֵ��
       
    else
        
        dk=-gk; %�½�����Ϊ������ֵ
        
        alpha=armijo1(t0); % �ҵ���������
        
        t0=t0+alpha*dk; % �����µ�һ��
        
        k=k+1; 
        
    end
    
end
tk=t0; disp('�ﵽ�����������������δ�ﵽ����');

end

