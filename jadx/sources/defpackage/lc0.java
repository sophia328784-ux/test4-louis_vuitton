package defpackage;

import android.app.ForegroundServiceStartNotAllowedException;
import androidx.media3.common.Player;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.mediacodec.MediaCodecSelector;
import androidx.media3.exoplayer.mediacodec.MediaCodecUtil;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.metadata.id3.Id3Decoder;
import androidx.media3.extractor.mp4.Mp4Extractor;
import androidx.media3.extractor.text.SubtitleParser;
import com.google.android.datatransport.Transformer;
import com.google.firebase.encoders.proto.ProtobufEncoder;
import com.google.firebase.messaging.ProtoEncoderDoNotUse;
import com.google.firebase.messaging.reporting.MessagingClientEventExtension;
import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.common.network.RequestTask;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.LookHandler;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.ph.database.ymk.makeup.b;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.nailLook.a;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.collect.Lists;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.g;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import net.rtccloud.sdk.Call;
import org.bouncycastle.cert.CertIOException;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class lc0 implements MediaCodecSelector, ListenerSet.Event, Transformer, Id3Decoder.FramePredicate, ExtractorsFactory, Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f75993b;

    public /* synthetic */ lc0(int i2) {
        this.f75993b = i2;
    }

    public static /* bridge */ /* synthetic */ ForegroundServiceStartNotAllowedException d(Object obj) {
        return (ForegroundServiceStartNotAllowedException) obj;
    }

    public static /* synthetic */ void h(int i2, Object obj) {
        throw new IllegalStateException("Source subfield " + i2 + ((Object) " is present but null: ") + obj);
    }

    public static /* synthetic */ void i(Object obj, Object obj2) {
        StringBuilder sb = new StringBuilder();
        sb.append(obj);
        sb.append(obj2);
        throw new IllegalArgumentException(sb.toString().toString());
    }

    public static /* synthetic */ void k(Object obj, Object obj2, Object obj3, Object obj4, String str) {
        throw new IllegalStateException((str + obj + obj2 + obj3 + obj4).toString());
    }

    public static /* synthetic */ void l(String str) {
        throw new ArithmeticException(str);
    }

    public static /* synthetic */ void m(String str, int i2, Object obj, Object obj2) {
        throw new IllegalArgumentException((str + i2 + obj + obj2).toString());
    }

    public static /* synthetic */ void n(String str, Object obj, Object obj2) {
        throw new IllegalArgumentException(str + obj + obj2);
    }

    public static /* synthetic */ void o(String str, Object obj, Object obj2, Object obj3) {
        throw new IllegalStateException((str + obj + obj2 + obj3).toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void p(String str, Object obj, Object obj2, Object obj3, int i2) {
        throw new IllegalArgumentException((str + obj + obj2 + obj3 + ((char) i2)).toString());
    }

    public static /* synthetic */ void q(String str, Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        throw new IllegalArgumentException((str + obj + obj2 + obj3 + obj4 + obj5).toString());
    }

    public static /* synthetic */ void r(String str, Object obj, Throwable th) throws CertIOException {
        throw new CertIOException(str + obj, th);
    }

    public static /* synthetic */ void s(StringBuilder sb, Object obj, Object obj2) {
        sb.append(obj);
        sb.append(obj2);
        throw new IllegalArgumentException(sb.toString().toString());
    }

    public static /* synthetic */ void t(StringBuilder sb, Object obj, Object obj2, Object obj3) {
        sb.append(obj);
        sb.append(obj2);
        sb.append(obj3);
        throw new IllegalArgumentException(sb.toString());
    }

    public static /* synthetic */ void u(Throwable th) {
        throw new IllegalArgumentException(th);
    }

    public static /* synthetic */ void v(String str, Object obj, Object obj2) {
        throw new IllegalArgumentException((str + obj + obj2).toString());
    }

    public static /* synthetic */ void w(String str, Object obj, Object obj2) {
        throw new IllegalStateException(str + obj + obj2);
    }

    @Override // com.google.android.datatransport.Transformer, com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        Throwable cause;
        switch (this.f75993b) {
            case 7:
                MessagingClientEventExtension messagingClientEventExtension = (MessagingClientEventExtension) obj;
                messagingClientEventExtension.getClass();
                ProtobufEncoder protobufEncoder = ProtoEncoderDoNotUse.f35271a;
                protobufEncoder.getClass();
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    protobufEncoder.a(messagingClientEventExtension, byteArrayOutputStream);
                    break;
                } catch (IOException unused) {
                }
                return byteArrayOutputStream.toByteArray();
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            default:
                Throwable th = (Throwable) obj;
                int i2 = NetworkTaskManager.d;
                return (!(th instanceof ExecutionException) || (cause = th.getCause()) == null) ? Single.g(th) : Single.g(cause);
            case 13:
                return g.f42660b;
            case 14:
                return Single.h(Boolean.valueOf(((RequestTask.Response) obj).f39357a != 304));
            case 15:
                RequestTask.Response response = (RequestTask.Response) obj;
                if (response.f39357a == 304) {
                    return Single.h(Collections.EMPTY_LIST);
                }
                a aVar = (a) response.f39358b;
                Objects.requireNonNull(aVar);
                return new m(Single.h(aVar.b()), new lc0(16)).f(new r40(response, 2));
            case 16:
                List list = (List) obj;
                Single singleA = LookHandler.a(Lists.c(list, new g7(27)));
                c8 c8Var = new c8(list, 6);
                singleA.getClass();
                return new t(singleA, c8Var);
            case 17:
                String str = (String) obj;
                b bVarA = com.perfectcorp.perfectlib.ph.database.ymk.makeup.a.a(YMKDatabase.b(), str);
                if (bVarA == null) {
                    Log.d("NailLookHandler", "Can't find metadata of " + str);
                }
                return Optional.b(bVarA);
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecSelector
    public List c(String str, boolean z, boolean z2) {
        return MediaCodecUtil.e(str, z, z2);
    }

    @Override // androidx.media3.extractor.metadata.id3.Id3Decoder.FramePredicate
    public boolean g(int i2, int i3, int i4, int i5, int i6) {
        if (i3 == 67 && i4 == 79 && i5 == 77 && (i6 == 77 || i2 == 2)) {
            return true;
        }
        if (i3 == 77 && i4 == 76 && i5 == 76) {
            return i6 == 84 || i2 == 2;
        }
        return false;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        switch (this.f75993b) {
            case 2:
                ((Player.Listener) obj).K(1);
                break;
            default:
                ((Player.Listener) obj).h0(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                break;
        }
    }

    @Override // androidx.media3.extractor.ExtractorsFactory
    public Extractor[] j() {
        return new Extractor[]{new Mp4Extractor(SubtitleParser.Factory.f16683a, 16)};
    }
}
