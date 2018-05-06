require File.expand_path(File.dirname(__FILE__) + '/../triangle')

describe '#name' do
  context '正三角形' do
    it '1,1,1' do
      triangle = Triangle.new(a:1,b:1,c:1)
      expect(triangle.name).to eq '正三角形'
    end
    it '0.1,0.1,0.1' do
      triangle = Triangle.new(a:0.1,b:0.1,c:0.1)
      expect(triangle.name).to eq '正三角形'
    end

  end
  context '二等辺三角形' do
    it '2,2,1' do
      triangle = Triangle.new(a:2,b:2,c:1)
      expect(triangle.name).to eq '二等辺三角形'
    end
    it '1,2,2' do
      triangle = Triangle.new(a:1,b:2,c:2)
      expect(triangle.name).to eq '二等辺三角形'
    end

  end
  context '直角三角形' do
    it '1,2,ルート5' do
      triangle = Triangle.new(a:1,b:2,c:5**(1/2.0))
      expect(triangle.name).to eq '直角三角形'
    end
    it 'ルート5,1,2' do
      triangle = Triangle.new(a:5**(1/2.0),b:2,c:1)
      expect(triangle.name).to eq '直角三角形'
    end

  end
  context '直角二等辺三角形' do
    it '1,1,ルート2' do
      triangle = Triangle.new(a:1,b:1,c:2**(1/2.0))
      expect(triangle.name).to eq '直角二等辺三角形'
    end
    it 'ルート2,1,1' do
      triangle = Triangle.new(a:2**(1/2.0),b:1,c:1)
      expect(triangle.name).to eq '直角二等辺三角形'
    end

  end
  context '不等辺三角形' do
    it '2,3,4' do
      triangle = Triangle.new(a:2,b:3,c:4)
      expect(triangle.name).to eq '不等辺三角形'
    end
    it '4,3,2' do
      triangle = Triangle.new(a:4,b:3,c:2)
      expect(triangle.name).to eq '不等辺三角形'
    end

  end
  context '三角形でない' do
    it '0,0,0' do
      triangle = Triangle.new(a:0,b:0,c:0)
      expect(triangle.name).to eq '三角形でない'
    end
    it '1,0,0' do
      triangle = Triangle.new(a:1,b:0,c:0)
      expect(triangle.name).to eq '三角形でない'
    end
    it '1,1,0' do
      triangle = Triangle.new(a:1,b:2,c:3)
      expect(triangle.name).to eq '三角形でない'
    end
    it '1,2,3' do
      triangle = Triangle.new(a:1,b:2,c:3)
      expect(triangle.name).to eq '三角形でない'
    end
    it '1,2,1' do
      triangle = Triangle.new(a:1,b:2,c:1)
      expect(triangle.name).to eq '三角形でない'
    end

  end





end