require_relative '../lib/bike'

describe Bike do
  it 'test the Bike class' do
    expect(subject).to respond_to :working?
  end


     describe '#report_broken' do
			it 'test if report_broken exists' do
				expect(subject).to respond_to :report_broken
			end

			it 'test report_broken is working' do
			  subject.report_broken
			  expect(subject).to be_broken
			end
     end


	describe '#broken' do 
	it 'test if bike.broken? exists' do
		  	expect(subject).to respond_to :broken?
		  end
    end

end
 

