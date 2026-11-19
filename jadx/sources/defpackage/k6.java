package defpackage;

import androidx.compose.material3.DatePickerKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.ShaderBrush;
import androidx.compose.ui.text.platform.AndroidTextPaint;
import java.io.IOException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.ws.RealWebSocket;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class k6 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71573b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f71574c;
    public final /* synthetic */ Object d;

    public /* synthetic */ k6(Object obj, long j2, int i2) {
        this.f71573b = i2;
        this.d = obj;
        this.f71574c = j2;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        boolean z;
        switch (this.f71573b) {
            case 0:
                Brush brush = (Brush) this.d;
                long j2 = this.f71574c;
                int i2 = AndroidTextPaint.f10886j;
                return ((ShaderBrush) brush).b(j2);
            case 1:
                Function1 function1 = (Function1) this.d;
                long j3 = this.f71574c;
                float f2 = DatePickerKt.f6780a;
                function1.invoke(Long.valueOf(j3));
                return Unit.f71739a;
            case 2:
                Http2Connection http2Connection = (Http2Connection) this.d;
                long j4 = this.f71574c;
                Http2Connection.Companion companion = Http2Connection.C;
                synchronized (http2Connection) {
                    long j5 = http2Connection.o;
                    long j6 = http2Connection.n;
                    if (j5 < j6) {
                        z = true;
                    } else {
                        http2Connection.n = j6 + 1;
                        z = false;
                    }
                }
                if (!z) {
                    try {
                        http2Connection.z.j(1, 0, false);
                    } catch (IOException e2) {
                        ErrorCode errorCode = ErrorCode.PROTOCOL_ERROR;
                        http2Connection.c(errorCode, errorCode, e2);
                    }
                    break;
                } else {
                    ErrorCode errorCode2 = ErrorCode.PROTOCOL_ERROR;
                    http2Connection.c(errorCode2, errorCode2, null);
                    j4 = -1;
                }
                return Long.valueOf(j4);
            default:
                return Long.valueOf(RealWebSocket.initReaderAndWriter$lambda$0$0((RealWebSocket) this.d, this.f71574c));
        }
    }
}
