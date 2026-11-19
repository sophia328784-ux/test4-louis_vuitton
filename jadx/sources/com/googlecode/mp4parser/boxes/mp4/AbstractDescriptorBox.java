package com.googlecode.mp4parser.boxes.mp4;

import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.boxes.mp4.objectdescriptors.ObjectDescriptorFactory;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.aspectj.lang.JoinPoint;
import org.aspectj.runtime.reflect.Factory;

/* JADX INFO: loaded from: classes2.dex */
public class AbstractDescriptorBox extends AbstractFullBox {
    public static final Logger p;
    public static final /* synthetic */ JoinPoint.StaticPart q;
    public static final /* synthetic */ JoinPoint.StaticPart r;
    public static final /* synthetic */ JoinPoint.StaticPart s;
    public static final /* synthetic */ JoinPoint.StaticPart t;
    public static final /* synthetic */ JoinPoint.StaticPart u;
    public ByteBuffer o;

    static {
        Factory factory = new Factory("AbstractDescriptorBox.java", AbstractDescriptorBox.class);
        q = factory.e(factory.d("getData", "com.googlecode.mp4parser.boxes.mp4.AbstractDescriptorBox", "", "", "java.nio.ByteBuffer"), 42);
        r = factory.e(factory.d("getDescriptor", "com.googlecode.mp4parser.boxes.mp4.AbstractDescriptorBox", "", "", "com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BaseDescriptor"), 58);
        s = factory.e(factory.d("getDescriptorAsString", "com.googlecode.mp4parser.boxes.mp4.AbstractDescriptorBox", "", "", "java.lang.String"), 62);
        t = factory.e(factory.d("setDescriptor", "com.googlecode.mp4parser.boxes.mp4.AbstractDescriptorBox", "com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BaseDescriptor", "descriptor", "void"), 66);
        u = factory.e(factory.d("setData", "com.googlecode.mp4parser.boxes.mp4.AbstractDescriptorBox", "java.nio.ByteBuffer", DbParams.KEY_DATA, "void"), 70);
        p = Logger.getLogger(AbstractDescriptorBox.class.getName());
    }

    public AbstractDescriptorBox(String str) {
        super(str);
    }

    @Override // com.googlecode.mp4parser.AbstractFullBox, com.googlecode.mp4parser.AbstractBox
    public final void a(ByteBuffer byteBuffer) {
        Logger logger = p;
        l(byteBuffer);
        this.o = byteBuffer.slice();
        byteBuffer.position(byteBuffer.remaining() + byteBuffer.position());
        try {
            this.o.rewind();
            ObjectDescriptorFactory.a(-1, this.o);
        } catch (IOException e2) {
            logger.log(Level.WARNING, "Error parsing ObjectDescriptor", (Throwable) e2);
        } catch (IndexOutOfBoundsException e3) {
            logger.log(Level.WARNING, "Error parsing ObjectDescriptor", (Throwable) e3);
        }
    }

    @Override // com.googlecode.mp4parser.AbstractFullBox, com.googlecode.mp4parser.AbstractBox
    public final void b(ByteBuffer byteBuffer) {
        o(byteBuffer);
        this.o.rewind();
        byteBuffer.put(this.o);
    }

    @Override // com.googlecode.mp4parser.AbstractBox
    public final long f() {
        return this.o.limit() + 4;
    }
}
