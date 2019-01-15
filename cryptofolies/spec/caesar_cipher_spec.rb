# frozen_string_literal: true

require_relative '../lib/caesar_cipher'

describe 'letter?' do
  it 'return TRUE if it is a letter, FALSE otherwise' do
    expect(letter?("a")).to eq(true)
    expect(letter?("b")).to eq(true)
    expect(letter?(51)).to eq(false)
    expect(letter?(["alax","akzgd"])).to eq(false)
  end
end

describe 'ascii_value_for_outside_range' do
  it 'shall return the right ASCII value' do
    expect(ascii_value_for_outside_range("a",-1,true)).to eq(122)
    expect(ascii_value_for_outside_range("A",-1,false)).to eq(90)
    expect(ascii_value_for_outside_range("z",1,true)).to eq(97)
    expect(ascii_value_for_outside_range("Z",1,false)).to eq(65)
  end
end

describe 'letter_encoder' do
  it 'shall return the right encoded character' do
    expect(letter_encoder("a", 1)).to eq("b")
    expect(letter_encoder("a", 0)).to eq("a")
    expect(letter_encoder("a", -1)).to eq("z")
    expect(letter_encoder("A", 0)).to eq("A")
    expect(letter_encoder("A", -1)).to eq("Z")
    expect(letter_encoder("A", 1)).to eq("B")
  end
end


describe 'caesar_cipher' do
  it 'shall return the right encoded sentence' do
    expect(caesar_cipher("Je m'Appelle Thibaut.", -1)).
    to eq("Id l'Zoodkkd Sghazts.")
    expect(caesar_cipher("What a string!", 5)).
    to eq("Bmfy f xywnsl!")
  end
end

