function [ gk ] = fun_grad1( t0 )
%��⺯��fun1���ݶȣ�������

syms t
gk = subs(diff(fun1(t)),t,t0); 
% subs����:https://zhidao.baidu.com/question/471116062.html
end

