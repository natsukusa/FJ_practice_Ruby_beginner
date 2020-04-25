def thanks_and_receipt(receipt)
  puts "ありがとうございました"
  unless receipt
    return
  end
  puts "こちら、レシートになります"
end

thanks_and_receipt(false)
