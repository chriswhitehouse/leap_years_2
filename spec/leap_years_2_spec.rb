require 'leap_years_2'

describe '#leap_year?' do
  it 'should return true when passed 2000' do
    expect(leap_year?(2000)).to eq true
  end

  it 'should return false when passed 1970' do
    expect(leap_year?(1970)).to eq false
  end

  it 'should return false when passed 1900' do
    expect(leap_year?(1900)).to eq false
  end

  it 'should return true when passed 1988' do
    expect(leap_year?(1988)).to eq true
  end

  it 'should return false when passed 1500' do
    expect(leap_year?(1500)).to eq false
  end
end

describe '#leap_years' do
  it 'will return an array containing the year 2000, if passed 200 as a beginning year, and 2000 as an end year' do
    expect(leap_years(2000,2000)).to eq [2000]
  end

  it 'returns [2000, 2004] if passed 2000, 2004' do
      expect(leap_years(2000,2004)).to eq [2000, 2004]
  end

  it 'returns [2000, 2004, 2008, 2012] if passed 2000, 2012' do
      expect(leap_years(2000,2012)).to eq [2000, 2004, 2008, 2012]
  end

describe '#closest_year' do
  it 'returns the closest year' do
    expect(closest_year(2001)).to eq 2000
  end

  it 'returns the closest year' do
    expect(closest_year(2003)).to eq 2004
  end

  it 'returns the closest year' do
    expect(closest_year(2002)).to eq 2000
  end
end

end
