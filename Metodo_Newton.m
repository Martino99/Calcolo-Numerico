function [alfa, k] = Metodo_Newton(f, f1, x0, tol, max_iter)
    
    if nargin == 3
        tol = 1e-9;
        max_iter = 1000;
    end
    
    k = 0;
    x1 = x0 - (feval(f, x0))/(feval(f1, x0));
    fx1 = feval(f, x1);
    while (abs(x1-x0)) > tol || (abs(fx1) > tol)
        x0 = x1;
        x1 = x0 - (feval(f, x0))/(feval(f1, x0));
        fx1 = feval(f, x1);
        k = k + 1;
        
        if (k > max_iter)
            disp("Metodo non convergente")
            alfa = inf;
            break
        end
    end    
    
    alfa = x1;
end

