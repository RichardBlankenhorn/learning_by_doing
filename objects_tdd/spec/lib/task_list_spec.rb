require 'rspec'
require_relative '../../lib/task_list'

describe TaskList do
  it 'should be a TaskList' do
    expect(subject).to be_a(TaskList)
  end

  describe '#task_list' do
    it 'should return an empty list for new task lists' do
      expect(subject.task_list).to eq([])
    end
  end

  describe '#add_task(string)' do
    it 'should add the string to the task list' do
      subject.add_task('string')
      expect(subject.task_list).to eq(['string'])
    end
  end

  describe '#task_count' do
    it 'should give a count of the number of tasks' do
      expect(subject.task_list.length).to eq(0)
    end
  end

  describe '#remove_task' do
    before do
      subject.add_task('string')
    end
    it 'should remove the string from the task list based on index - 1' do
      subject.remove_task(1)
      expect(subject.task_list).to eq([])
    end
  end

  describe '#modify_task' do
    before do
      subject.add_task('string')
    end
    it 'should change an indexed string to a new string' do
      subject.modify_task(1, 'new string')
      expect(subject.task_list).to eq(['new string'])
    end
  end
end
