select mgr, ename, msal
,      sum(msal) over
       ( order by mgr, msal, EMPNO
         range unbounded preceding
       ) as cumulative
from   employees
order  by mgr, msal;
