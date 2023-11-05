def verificar_numero_whatsapp(numero)
  regex = /\A\(\d{2}\) 9 \d{4}-\d{4}\z/

  if regex.match(numero)
    puts "Seu WhatsApp é #{numero}. É um número válido!"
  else
    puts "Seu WhatsApp não segue o formato válido (99) 9 9999-9999."
  end
end

verificar_numero_whatsapp("(11) 9 1234-5678")
verificar_numero_whatsapp("(99) 1234-5678")
verificar_numero_whatsapp("(99) 9 1234-5678")
verificar_numero_whatsapp("(99) 9 12345-6789")
