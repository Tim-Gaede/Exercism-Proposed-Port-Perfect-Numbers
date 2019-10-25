function classify(n::Int)
    if n < 1;    throw(DomainError("n must be at least 1"));    end

    if n < 5;    return "deficient";    end

    # semi-brute force:
    sum = 1
    root_ = convert(Int64, floor(√n))
    lim = root_ - 1
    for dvr_cand = 2 : lim # divisor canidates
        if n % dvr_cand == 0
            sum += dvr_cand
            sum += n ÷ dvr_cand # AutoHotKey makes typing '÷' easier
        end
    end


    if root_^2 == n
        sum += root_
    elseif n % root_ == 0
        sum += root_
        sum += n ÷ root_
    end


    if sum > n
        return "abundant"
    elseif sum < n
        return "deficient"
    else
        return "perfect"
    end
end
