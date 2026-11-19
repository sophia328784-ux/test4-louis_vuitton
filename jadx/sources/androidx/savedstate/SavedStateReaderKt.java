package androidx.savedstate;

import defpackage.fc;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"androidx/savedstate/SavedStateReaderKt__SavedStateReader_androidKt"}, d2 = {}, k = 4, mv = {2, 0, 0}, xi = 48)
public abstract class SavedStateReaderKt {
    public static final void a(String str) {
        str.getClass();
        throw new IllegalArgumentException(fc.h("No valid saved state was found for the key '", str, "'. It may be missing, null, or not of the expected type. This can occur if the value was saved with a different type or if the saved state was modified unexpectedly."));
    }
}
