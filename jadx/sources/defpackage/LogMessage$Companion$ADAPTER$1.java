package defpackage;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoAdapterKt$commonString$1;
import com.squareup.wire.ProtoAdapterKt$commonUint32$1;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okio.ByteString;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"LogMessage$Companion$ADAPTER$1", "Lcom/squareup/wire/ProtoAdapter;", "LLogMessage;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class LogMessage$Companion$ADAPTER$1 extends ProtoAdapter<LogMessage> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) throws IOException {
        protoReader.getClass();
        long jD = protoReader.d();
        String strL = "";
        String strL2 = strL;
        String strL3 = strL2;
        int iN = 0;
        int iN2 = 0;
        int iN3 = 0;
        while (true) {
            int iG = protoReader.g();
            if (iG == -1) {
                return new LogMessage(strL, iN, iN2, iN3, strL2, strL3, protoReader.e(jD));
            }
            ProtoAdapterKt$commonUint32$1 protoAdapterKt$commonUint32$1 = ProtoAdapter.f43455i;
            ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
            switch (iG) {
                case 1:
                    protoAdapterKt$commonString$1.getClass();
                    strL = protoReader.l();
                    break;
                case 2:
                    protoAdapterKt$commonUint32$1.getClass();
                    iN = protoReader.n();
                    break;
                case 3:
                    protoAdapterKt$commonUint32$1.getClass();
                    iN2 = protoReader.n();
                    break;
                case 4:
                    protoAdapterKt$commonUint32$1.getClass();
                    iN3 = protoReader.n();
                    break;
                case 5:
                    protoAdapterKt$commonString$1.getClass();
                    strL2 = protoReader.l();
                    break;
                case 6:
                    protoAdapterKt$commonString$1.getClass();
                    strL3 = protoReader.l();
                    break;
                default:
                    protoReader.m(iG);
                    break;
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        LogMessage logMessage = (LogMessage) obj;
        protoWriter.getClass();
        logMessage.getClass();
        String str = logMessage.f30e;
        String str2 = logMessage.f34j;
        String str3 = logMessage.f33i;
        boolean zC = Intrinsics.c(str, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!zC) {
            protoAdapterKt$commonString$1.f(protoWriter, 1, str);
        }
        int i2 = logMessage.f31f;
        ProtoAdapterKt$commonUint32$1 protoAdapterKt$commonUint32$1 = ProtoAdapter.f43455i;
        if (i2 != 0) {
            protoAdapterKt$commonUint32$1.f(protoWriter, 2, Integer.valueOf(i2));
        }
        int i3 = logMessage.g;
        if (i3 != 0) {
            protoAdapterKt$commonUint32$1.f(protoWriter, 3, Integer.valueOf(i3));
        }
        int i4 = logMessage.f32h;
        if (i4 != 0) {
            protoAdapterKt$commonUint32$1.f(protoWriter, 4, Integer.valueOf(i4));
        }
        if (!Intrinsics.c(str3, "")) {
            protoAdapterKt$commonString$1.f(protoWriter, 5, str3);
        }
        if (!Intrinsics.c(str2, "")) {
            protoAdapterKt$commonString$1.f(protoWriter, 6, str2);
        }
        protoWriter.a(logMessage.b());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        LogMessage logMessage = (LogMessage) obj;
        reverseProtoWriter.getClass();
        logMessage.getClass();
        ByteString byteStringB = logMessage.b();
        String str = logMessage.f30e;
        String str2 = logMessage.f33i;
        reverseProtoWriter.d(byteStringB);
        String str3 = logMessage.f34j;
        boolean zC = Intrinsics.c(str3, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!zC) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 6, str3);
        }
        if (!Intrinsics.c(str2, "")) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 5, str2);
        }
        int i2 = logMessage.f32h;
        ProtoAdapterKt$commonUint32$1 protoAdapterKt$commonUint32$1 = ProtoAdapter.f43455i;
        if (i2 != 0) {
            protoAdapterKt$commonUint32$1.g(reverseProtoWriter, 4, Integer.valueOf(i2));
        }
        int i3 = logMessage.g;
        if (i3 != 0) {
            protoAdapterKt$commonUint32$1.g(reverseProtoWriter, 3, Integer.valueOf(i3));
        }
        int i4 = logMessage.f31f;
        if (i4 != 0) {
            protoAdapterKt$commonUint32$1.g(reverseProtoWriter, 2, Integer.valueOf(i4));
        }
        if (Intrinsics.c(str, "")) {
            return;
        }
        protoAdapterKt$commonString$1.g(reverseProtoWriter, 1, str);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        LogMessage logMessage = (LogMessage) obj;
        logMessage.getClass();
        ByteString byteStringB = logMessage.b();
        String str = logMessage.f34j;
        String str2 = logMessage.f33i;
        int iE = byteStringB.e();
        String str3 = logMessage.f30e;
        boolean zC = Intrinsics.c(str3, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!zC) {
            iE += protoAdapterKt$commonString$1.i(1, str3);
        }
        int i2 = logMessage.f31f;
        ProtoAdapterKt$commonUint32$1 protoAdapterKt$commonUint32$1 = ProtoAdapter.f43455i;
        if (i2 != 0) {
            iE += protoAdapterKt$commonUint32$1.i(2, Integer.valueOf(i2));
        }
        int i3 = logMessage.g;
        if (i3 != 0) {
            iE += protoAdapterKt$commonUint32$1.i(3, Integer.valueOf(i3));
        }
        int i4 = logMessage.f32h;
        if (i4 != 0) {
            iE += protoAdapterKt$commonUint32$1.i(4, Integer.valueOf(i4));
        }
        if (!Intrinsics.c(str2, "")) {
            iE += protoAdapterKt$commonString$1.i(5, str2);
        }
        return !Intrinsics.c(str, "") ? protoAdapterKt$commonString$1.i(6, str) + iE : iE;
    }
}
