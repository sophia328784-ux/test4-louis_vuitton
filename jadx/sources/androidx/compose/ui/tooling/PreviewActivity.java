package androidx.compose.ui.tooling;

import android.content.Intent;
import android.os.Bundle;
import androidx.activity.ComponentActivity;
import androidx.activity.compose.ComponentActivityKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.tooling.preview.PreviewParameterProvider;
import defpackage.az;
import defpackage.hp0;
import defpackage.md;
import defpackage.n00;
import defpackage.va;
import io.jsonwebtoken.JwtParser;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.KotlinReflectionNotSupportedError;
import kotlin.sequences.Sequence;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/tooling/PreviewActivity;", "Landroidx/activity/ComponentActivity;", "<init>", "()V", "ui-tooling"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PreviewActivity extends ComponentActivity {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ int f10996h = 0;

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) throws IllegalAccessException, InstantiationException, InvocationTargetException {
        String stringExtra;
        Class<?> cls;
        Object[] array;
        super.onCreate(bundle);
        if ((getApplicationInfo().flags & 2) == 0) {
            finish();
            return;
        }
        Intent intent = getIntent();
        if (intent == null || (stringExtra = intent.getStringExtra("composable")) == null) {
            return;
        }
        int iZ = StringsKt.z(stringExtra, JwtParser.SEPARATOR_CHAR, 0, 6);
        String strSubstring = iZ == -1 ? stringExtra : stringExtra.substring(0, iZ);
        String strR = StringsKt.R(JwtParser.SEPARATOR_CHAR, stringExtra, stringExtra);
        String stringExtra2 = getIntent().getStringExtra("parameterProviderClassName");
        if (stringExtra2 == null) {
            ComponentActivityKt.a(this, new ComposableLambdaImpl(-840626948, true, new va(strSubstring, strR)));
            return;
        }
        Object obj = null;
        try {
            cls = Class.forName(stringExtra2);
        } catch (ClassNotFoundException unused) {
            PreviewLogger.f10997a.getClass();
            cls = null;
        }
        int intExtra = getIntent().getIntExtra("parameterProviderIndex", -1);
        if (cls != null) {
            try {
                Constructor<?>[] constructors = cls.getConstructors();
                int length = constructors.length;
                int i2 = 0;
                boolean z = false;
                Constructor<?> constructor = null;
                while (true) {
                    if (i2 < length) {
                        Constructor<?> constructor2 = constructors[i2];
                        if (constructor2.getParameterTypes().length == 0) {
                            if (!z) {
                                z = true;
                                constructor = constructor2;
                            }
                        }
                        i2++;
                    } else if (!z) {
                    }
                    constructor = null;
                    break;
                }
                if (constructor == null) {
                    throw new IllegalArgumentException("PreviewParameterProvider constructor can not have parameters");
                }
                constructor.setAccessible(true);
                Object objNewInstance = constructor.newInstance(null);
                objNewInstance.getClass();
                PreviewParameterProvider previewParameterProvider = (PreviewParameterProvider) objNewInstance;
                if (intExtra < 0) {
                    Sequence sequenceA = previewParameterProvider.a();
                    int count = previewParameterProvider.getCount();
                    Iterator f74480a = sequenceA.getF74480a();
                    array = new Object[count];
                    for (int i3 = 0; i3 < count; i3++) {
                        array[i3] = f74480a.next();
                    }
                } else {
                    Sequence sequenceA2 = previewParameterProvider.a();
                    sequenceA2.getClass();
                    if (intExtra >= 0) {
                        Iterator f74480a2 = sequenceA2.getF74480a();
                        int i4 = 0;
                        while (true) {
                            if (!f74480a2.hasNext()) {
                                az.v(n00.q("Sequence doesn't contain element at index ", intExtra, JwtParser.SEPARATOR_CHAR));
                                break;
                            }
                            Object next = f74480a2.next();
                            int i5 = i4 + 1;
                            if (intExtra == i4) {
                                obj = next;
                                break;
                            }
                            i4 = i5;
                        }
                    } else {
                        az.v(n00.q("Sequence doesn't contain element at index ", intExtra, JwtParser.SEPARATOR_CHAR));
                    }
                    List listO = CollectionsKt.O(obj);
                    ArrayList arrayList = new ArrayList(CollectionsKt.t(listO, 10));
                    Iterator it = listO.iterator();
                    while (it.hasNext()) {
                        arrayList.add(PreviewUtils_androidKt.a(it.next()));
                    }
                    array = arrayList.toArray(new Object[0]);
                }
            } catch (KotlinReflectionNotSupportedError unused2) {
                md.k("Deploying Compose Previews with PreviewParameterProvider arguments requires adding a dependency to the kotlin-reflect library.\nConsider adding 'debugImplementation \"org.jetbrains.kotlin:kotlin-reflect:$kotlin_version\"' to the module's build.gradle.");
                return;
            }
        } else {
            array = new Object[0];
        }
        if (array.length > 1) {
            ComponentActivityKt.a(this, new ComposableLambdaImpl(-861939235, true, new hp0(array, strSubstring, strR)));
        } else {
            ComponentActivityKt.a(this, new ComposableLambdaImpl(-1901447514, true, new hp0(strSubstring, strR, array)));
        }
    }
}
