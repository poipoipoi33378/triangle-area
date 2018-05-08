require File.expand_path(File.dirname(__FILE__) + '/../triangle')

describe '#judge' do
  it '2, 3, 4'do
    triangle = Triangle.new(a:2,b:3,c:4)
    expect(triangle.judge).to eq '不等辺三角形ですね！'
  end
  it '2, 2, 1'do
    triangle = Triangle.new(a:2,b:2,c:1)
    expect(triangle.judge).to eq '二等辺三角形ですね！'
  end
  it '1, 1, 1'do
    triangle = Triangle.new(a:1,b:1,c:1)
    expect(triangle.judge).to eq '正三角形ですね！'
  end
  it '1, 2, 3'do
    triangle = Triangle.new(a:1,b:2,c:3)
    expect(triangle.judge).to eq '三角形じゃないです＞＜'
  end

end
describe '#name' do
  context 'a,bを固定。cの長さを増やしていき境界値でのテスト' do
    context '二等辺三角形　角度0度ー＞180度' do
      it '角度0度（直線）' do
        triangle = Triangle.new(a:1,b:1,c:0)
        expect(triangle.name).to eq '三角形でない'
      end
      it '　　　　二等辺三角形　c=0.1' do
        triangle = Triangle.new(a:1,b:1,c:0.1)
        expect(triangle.name).to eq '二等辺三角形'
      end
      it '　　　　二等辺三角形 c=0.9' do
        triangle = Triangle.new(a:1,b:1,c:0.9)
        expect(triangle.name).to eq '二等辺三角形'
      end
      it '角度60度（正三角形）c=1' do
        triangle = Triangle.new(a:1,b:1,c:1)
        expect(triangle.name).to eq '正三角形'
      end
      it '　　　　二等辺三角形 c=1.1' do
        triangle = Triangle.new(a:1,b:1,c:1.1)
        expect(triangle.name).to eq '二等辺三角形'
      end
      it '　　　　二等辺三角形 c=ルート2-0.1' do
        triangle = Triangle.new(a:1,b:1,c:2**(1/2.0)-0.1)
        expect(triangle.name).to eq '二等辺三角形'
      end
      it '角度90度（直角二等辺三角形） c=ルート2' do
        triangle = Triangle.new(a:1,b:1,c:2**(1/2.0))
        expect(triangle.name).to eq '直角二等辺三角形'
      end
      it '　　　　二等辺三角形 c=ルート2+0.1' do
        triangle = Triangle.new(a:1,b:1,c:2**(1/2.0)+0.1)
        expect(triangle.name).to eq '二等辺三角形'
      end
      it '　　　　二等辺三角形 c=1.9' do
        triangle = Triangle.new(a:1,b:1,c:1.9)
        expect(triangle.name).to eq '二等辺三角形'
      end
      it '角度180度　直線' do
        triangle = Triangle.new(a:1,b:1,c:2)
        expect(triangle.name).to eq '三角形でない'
      end
    end

    context '不等辺三角形　角度0度ー＞180度' do
      it '角度0度（直線）C=1' do
        triangle = Triangle.new(a:2,b:3,c:1)
        expect(triangle.name).to eq '三角形でない'
      end
      it '　　　　不等辺三角形　c=1.1' do
        triangle = Triangle.new(a:2,b:3,c:1.1)
        expect(triangle.name).to eq '不等辺三角形'
      end
      it '　　　　不等辺三角形 c=1.9' do
        triangle = Triangle.new(a:2,b:3,c:1.9)
        expect(triangle.name).to eq '不等辺三角形'
      end
      it '二等辺三角形 C=2' do
        triangle = Triangle.new(a:2,b:3,c:2)
        expect(triangle.name).to eq '二等辺三角形'
      end
      it '　　　　不等辺三角形 c=2.1' do
        triangle = Triangle.new(a:2,b:3,c:2.1)
        expect(triangle.name).to eq '不等辺三角形'
      end
      it '　　　　不等辺三角形 c=ルート13-0.1' do
        triangle = Triangle.new(a:2,b:3,c:13**(1/2.0)-0.1)
        expect(triangle.name).to eq '不等辺三角形'
      end
      it '角度90度（直角三角形） c=ルート13' do
        triangle = Triangle.new(a:2,b:3,c:13**(1/2.0))
        expect(triangle.name).to eq '直角三角形'
      end
      it '　　　　不等辺三角形 c=ルート13+0.1' do
        triangle = Triangle.new(a:2,b:3,c:13**(1/2.0)+0.1)
        expect(triangle.name).to eq '不等辺三角形'
      end
      it '　　　　不等辺三角形 c=4.9' do
        triangle = Triangle.new(a:2,b:3,c:4.9)
        expect(triangle.name).to eq '不等辺三角形'
      end
      it '角度180度　直線 c=5' do
        triangle = Triangle.new(a:2,b:3,c:5)
        expect(triangle.name).to eq '三角形でない'
      end
    end
  end
  context 'a,b,c値の入れ替え' do
    context '不等辺三角形' do
      it '2,3,4' do
        triangle = Triangle.new(a:2,b:3,c:4)
        expect(triangle.name).to eq '不等辺三角形'
      end
      it '3,4,2' do
        triangle = Triangle.new(a:3,b:4,c:2)
        expect(triangle.name).to eq '不等辺三角形'
      end
      it '4,2,3' do
        triangle = Triangle.new(a:4,b:2,c:3)
        expect(triangle.name).to eq '不等辺三角形'
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
      it '2,1,2' do
        triangle = Triangle.new(a:2,b:1,c:2)
        expect(triangle.name).to eq '二等辺三角形'
      end
    end
    context '直角二等辺三角形' do
      it '1,1,2**(1/2.0)' do
        triangle = Triangle.new(a:1,b:1,c:2**(1/2.0))
        expect(triangle.name).to eq '直角二等辺三角形'
      end
      it '1,2**(1/2.0),1' do
        triangle = Triangle.new(a:1,b:2**(1/2.0),c:1)
        expect(triangle.name).to eq '直角二等辺三角形'
      end
      it '2**(1/2.0),1,1' do
        triangle = Triangle.new(a:2**(1/2.0),b:1,c:1)
        expect(triangle.name).to eq '直角二等辺三角形'
      end
    end
    context '直角三角形' do
      it '2,3,13**(1/2.0)' do
        triangle = Triangle.new(a:2,b:3,c:13**(1/2.0))
        expect(triangle.name).to eq '直角三角形'
      end
      it '2,13**(1/2.0),3' do
        triangle = Triangle.new(a:2,b:13**(1/2.0),c:3)
        expect(triangle.name).to eq '直角三角形'
      end
      it '13**(1/2.0),2,3' do
        triangle = Triangle.new(a:13**(1/2.0),b:2,c:3)
        expect(triangle.name).to eq '直角三角形'
      end
    end

  end
end