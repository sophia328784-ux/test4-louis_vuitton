package defpackage;

import android.text.Editable;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextInclusionStrategy;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TransformedText;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.text.SubtitleParser;
import androidx.media3.extractor.ts.TsExtractor;
import com.google.android.datatransport.TransportScheduleCallback;
import com.google.android.material.textfield.TextInputLayout;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.datatransport.TransportRegistrar;
import com.perfectcorp.perfectlib.VtoApplier;
import com.perfectcorp.perfectlib.VtoPattern;
import com.perfectcorp.perfectlib.VtoWearingStyle;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.h;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.sightcall.libraries.rx.SubscriptionsKt;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import java.io.File;
import java.util.List;
import java.util.NoSuchElementException;
import kotlinx.serialization.UnknownFieldException;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.tsp.TSPException;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class b21 implements Action, Function, TextInclusionStrategy, TextInputLayout.LengthCounter, TransportScheduleCallback, ComponentFactory, ExtractorsFactory, Consumer, VisualTransformation, VtoApplier.FunStickerActionHintCallback {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20726b;

    public /* synthetic */ b21(int i2) {
        this.f20726b = i2;
    }

    public static /* synthetic */ void k() {
        throw new RuntimeException();
    }

    public static /* synthetic */ void l(int i2) {
        throw new UnknownFieldException(i2);
    }

    public static /* synthetic */ void m(int i2, int i3, Object obj, Object obj2, Object obj3) {
        StringBuilder sb = new StringBuilder();
        sb.append(obj);
        sb.append(obj2);
        sb.append(i2);
        sb.append(obj3);
        sb.append(i3);
        throw new IllegalArgumentException(sb.toString());
    }

    public static /* synthetic */ void n(Object obj) {
        throw new IllegalArgumentException(obj.toString());
    }

    public static /* synthetic */ void o(Object obj, Object obj2, Object obj3, Object obj4, String str) {
        throw new IllegalArgumentException(str + obj + obj2 + obj3 + obj4);
    }

    public static /* synthetic */ void p(Object obj, String str) {
        throw new UnsupportedOperationException(str + obj);
    }

    public static /* synthetic */ void q(String str) {
        throw new DataLengthException(str);
    }

    public static /* synthetic */ void r(String str, int i2, Object obj) {
        throw new IllegalArgumentException(str + i2 + obj);
    }

    public static /* synthetic */ void s(String str, Object obj, Object obj2, Object obj3) {
        throw new IllegalArgumentException(str + obj + obj2 + obj3);
    }

    public static /* synthetic */ void t(String str, Object obj, Throwable th) {
        throw new RuntimeException(str + obj, th);
    }

    public static /* synthetic */ void u(String str, Throwable th) throws TSPException {
        throw new TSPException(str + th, th);
    }

    public static /* synthetic */ void v(StringBuilder sb, int i2) {
        sb.append(i2);
        throw new IllegalArgumentException(sb.toString().toString());
    }

    public static /* synthetic */ void w(StringBuilder sb, Object obj, Object obj2) {
        sb.append(obj);
        sb.append(obj2);
        throw new IllegalArgumentException(sb.toString());
    }

    public static /* synthetic */ void x() {
        throw new NoSuchElementException();
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public void accept(Object obj) {
        ((Throwable) obj).printStackTrace();
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        switch (this.f20726b) {
            case 2:
                return (File) ((List) obj).get(0);
            case 28:
                return new VtoWearingStyle(((h.d.a.b) obj).guid, "", "");
            default:
                return (VtoPattern) ((Optional) obj).c();
        }
    }

    @Override // com.google.firebase.components.ComponentFactory
    public Object c(ComponentContainer componentContainer) {
        switch (this.f20726b) {
            case 10:
                return TransportRegistrar.lambda$getComponents$0(componentContainer);
            case 11:
                return TransportRegistrar.lambda$getComponents$1(componentContainer);
            default:
                return TransportRegistrar.lambda$getComponents$2(componentContainer);
        }
    }

    @Override // com.google.android.material.textfield.TextInputLayout.LengthCounter
    public int d(Editable editable) {
        int[][] iArr = TextInputLayout.E1;
        if (editable != null) {
            return editable.length();
        }
        return 0;
    }

    @Override // com.google.android.datatransport.TransportScheduleCallback
    public void g(Exception exc) {
    }

    @Override // androidx.compose.ui.text.input.VisualTransformation
    public TransformedText h(AnnotatedString annotatedString) {
        return new TransformedText(annotatedString, OffsetMapping.Companion.f10821a);
    }

    @Override // androidx.compose.ui.text.TextInclusionStrategy
    public boolean i(Rect rect, Rect rect2) {
        switch (this.f20726b) {
            case 3:
                return rect.g(rect2);
            default:
                return rect2.a(rect.b());
        }
    }

    @Override // androidx.media3.extractor.ExtractorsFactory
    public Extractor[] j() {
        return new Extractor[]{new TsExtractor(1, SubtitleParser.Factory.f16683a)};
    }

    @Override // com.perfectcorp.perfectlib.VtoApplier.FunStickerActionHintCallback
    public void onTrigger(List list) {
    }

    @Override // io.reactivex.rxjava3.functions.Action
    public void run() {
        SubscriptionsKt.relay$lambda$0();
    }
}
