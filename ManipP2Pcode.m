
mdl_puma560
 

q = [0 -pi/4 -pi/4 0 pi/8 0]
 

T = p560.fkine(q)

qi = p560.ikine(T, 'pinv');

qi = p560.ikine6s(T)

p560.fkine(qi)
 
p560.ikine6s(T, 'rdf')
 

T1 = transl(0.6, -0.5, 0.0) % end point
 
T2 = transl(0.4, 0.5, 0.2)	% start point

T = ctraj(T2, T1, 15); 	% compute a Cartesian path
 
q = p560.ikine6s(T); 

subplot(3,1,1); plot(q(:,1)); xlabel('Time (s)'); ylabel('Joint 1 (rad)');
 

subplot(3,1,2); plot(q(:,2)); xlabel('Time (s)'); ylabel('Joint 2 (rad)');
 

subplot(3,1,3); plot(q(:,3)); xlabel('Time (s)'); ylabel('Joint 3 (rad)');

 
clf
 
plot(T1)
p560.plot(q)
 


