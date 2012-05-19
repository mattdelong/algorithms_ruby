def kmp_search(s, w)  
  m = i = 0  
  slen = s.length  
  wlen = w.length  
  t = kmp_table(w)  
  while m+i < slen  
    if w[i] == s[m+i]  
      i += 1  
      return m  if i == wlen  
    else  
      m += i - t[i]  
      i = [0, t[i]].max  
    end  
  end  
  -1  
end  
  
def kmp_table(w)  
  pos = 2  
  cnd = 0  
  t = [-1, 0]  
  wlen = w.length  
  while pos < wlen  
    if w[pos-1] == w[cnd]  
      cnd += 1  
      t[pos] = cnd  
      pos += 1  
    elsif cnd > 0  
      cnd = t[cnd]  
    else  
      t[pos] = 0  
      pos += 1  
    end  
  end  
  t  
end  
