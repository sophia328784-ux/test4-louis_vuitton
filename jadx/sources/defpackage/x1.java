package defpackage;

import android.text.TextUtils;
import android.window.OnBackInvokedDispatcher;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.amr.AmrExtractor;
import androidx.media3.extractor.ts.Ac3Extractor;
import androidx.media3.extractor.ts.Ac4Extractor;
import androidx.media3.extractor.ts.AdtsExtractor;
import com.google.crypto.tink.Key;
import com.google.crypto.tink.internal.KeySerializer;
import com.google.crypto.tink.internal.ParametersParser;
import com.google.crypto.tink.internal.ParametersSerializer;
import com.google.crypto.tink.internal.PrimitiveConstructor;
import com.google.crypto.tink.mac.AesCmacKey;
import com.google.crypto.tink.mac.internal.ChunkedAesCmacImpl;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ApplyEffectUtility;
import com.perfectcorp.perfectlib.internal.InternalErrorRetriever;
import com.perfectcorp.perfectlib.ph.database.ymk.makeup.b;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.c;
import com.perfectcorp.perfectlib.ph.kernelctrl.sku.e;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.com.google.common.collect.Iterables;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.List;
import org.bouncycastle.asn1.ASN1Exception;
import org.bouncycastle.asn1.x509.NameConstraintValidatorException;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class x1 implements ExtractorsFactory, PrimitiveConstructor.PrimitiveConstructionFunction, ParametersSerializer.ParametersSerializationFunction, ParametersParser.ParametersParsingFunction, KeySerializer.KeySerializationFunction, Predicate, Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80992b;

    public /* synthetic */ x1(int i2) {
        this.f80992b = i2;
    }

    public static /* bridge */ /* synthetic */ OnBackInvokedDispatcher h(Object obj) {
        return (OnBackInvokedDispatcher) obj;
    }

    public static /* synthetic */ void i() {
        throw new UnsupportedOperationException();
    }

    public static /* synthetic */ void k(Object obj, String str) throws ASN1Exception {
        throw new ASN1Exception(str + obj);
    }

    public static /* synthetic */ void l(String str) throws NameConstraintValidatorException {
        throw new NameConstraintValidatorException(str);
    }

    public static /* synthetic */ void m(Throwable th) {
        throw new RuntimeException(th);
    }

    public static /* synthetic */ void n(Object obj, String str) {
        throw new RuntimeException(str + obj);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        switch (this.f80992b) {
            case 26:
                ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
                List<c.a> listA = ((c) obj).a();
                for (c.a aVar : listA) {
                    if (TextUtils.isEmpty(aVar.a())) {
                        az.w(aVar.b(), "Can't find product GUID for SKU GUID=");
                        return null;
                    }
                }
                Log.g(3, "ApplyEffectUtility", "[handleNoProductIdSettings] products=".concat(Iterables.c(listA)));
                return listA;
            case 27:
                return (Iterable) ((e) obj).a();
            case 28:
                return Single.g(InternalErrorRetriever.a((Throwable) obj));
            default:
                ImmutableSet immutableSet2 = ApplyEffectUtility.f39471a;
                return Optional.e((b) ((List) obj).get(0));
        }
    }

    @Override // com.google.crypto.tink.internal.PrimitiveConstructor.PrimitiveConstructionFunction
    public Object d(Key key) {
        return new ChunkedAesCmacImpl((AesCmacKey) key);
    }

    @Override // androidx.media3.extractor.ExtractorsFactory
    public Extractor[] j() {
        switch (this.f80992b) {
            case 4:
                return new Extractor[]{new Ac3Extractor()};
            case 5:
                return new Extractor[]{new Ac4Extractor()};
            case 13:
                return new Extractor[]{new AdtsExtractor()};
            default:
                return new Extractor[]{new AmrExtractor()};
        }
    }

    @Override // io.reactivex.rxjava3.functions.Predicate
    public boolean test(Object obj) {
        return ((Boolean) obj).booleanValue();
    }
}
