require_relative 'open_lock'

RSpec.describe OpenLock do
  describe '#call' do
    let(:source) { '000' }
    let(:destination) { '111' }
    let(:disks) { 3 }
    let(:restricted_nodes) { ['001', '100'] }
    let(:open_lock) { described_class.new(source, destination, disks, restricted_nodes) }
    
    subject { open_lock.call }
    
    it 'returns the path of combinations to open the lock' do
      is_expected.to contain_exactly('000', '010', '110', '111')
    end
    
    
    context 'when the lock can\'t be. opened' do
      let(:restricted_nodes) { ['001', '100', '010', '900', '090', '009'] }
      
      it 'returns a message' do
        is_expected.to eq 'the lock can\'t be opened'
      end
    end
  end
end
