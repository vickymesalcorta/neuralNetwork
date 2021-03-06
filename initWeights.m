function w = initWeights(arq)

	% Creates for each level (except the last) a matrix of weights [0,0.3] of the size nextLevelXcurrLevel+1
	% That +1 is for the threshold
	s = size(arq,2) - 1;
	% Esto comento porque crea un cellArray de sxs
	% w = cell(s);
	for layer = 1:s
		% Elemento i,j de la matriz es el peso para llegar A i DESDE j.
		% El nombre de la matrix corresponde con los pesos para llegar a esa LAYER
		% Es decir el "1" es para llegar a la primera capa, es decir, pesos desde layer 0 A 1
		
        % interval (a,b) with the formula r = a + (b-a).*rand(N,1).
        w{layer} = 0.5 .* rand(arq(layer+1), arq(layer)+1);
    end

end