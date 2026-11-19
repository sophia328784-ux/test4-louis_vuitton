package androidx.core.view.inputmethod;

import android.content.ClipData;
import android.os.Bundle;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.view.inputmethod.InputContentInfo;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.core.view.ContentInfoCompat;
import androidx.core.view.ViewCompat;
import defpackage.fw;

/* JADX INFO: loaded from: classes.dex */
public final class InputConnectionCompat {

    public interface OnCommitContentListener {
    }

    @Deprecated
    public InputConnectionCompat() {
    }

    public static InputConnection a(AppCompatEditText appCompatEditText, InputConnection inputConnection, EditorInfo editorInfo) {
        final fw fwVar = new fw(appCompatEditText, 10);
        return new InputConnectionWrapper(inputConnection) { // from class: androidx.core.view.inputmethod.InputConnectionCompat.1
            @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
            public final boolean commitContent(InputContentInfo inputContentInfo, int i2, Bundle bundle) {
                Bundle bundle2;
                InputContentInfoCompat inputContentInfoCompat = inputContentInfo == null ? null : new InputContentInfoCompat(new InputContentInfoCompat.InputContentInfoCompatApi25Impl(inputContentInfo));
                AppCompatEditText appCompatEditText2 = (AppCompatEditText) fwVar.f69221c;
                if ((i2 & 1) != 0) {
                    try {
                        inputContentInfoCompat.f12284a.f12285a.requestPermission();
                        InputContentInfo inputContentInfo2 = inputContentInfoCompat.f12284a.f12285a;
                        bundle2 = bundle == null ? new Bundle() : new Bundle(bundle);
                        bundle2.putParcelable("androidx.core.view.extra.INPUT_CONTENT_INFO", inputContentInfo2);
                    } catch (Exception unused) {
                    }
                } else {
                    bundle2 = bundle;
                }
                InputContentInfo inputContentInfo3 = inputContentInfoCompat.f12284a.f12285a;
                ContentInfoCompat.Builder builder = new ContentInfoCompat.Builder(new ClipData(inputContentInfo3.getDescription(), new ClipData.Item(inputContentInfo3.getContentUri())), 2);
                builder.d(inputContentInfo3.getLinkUri());
                builder.b(bundle2);
                if (ViewCompat.p(appCompatEditText2, builder.a()) == null) {
                    return true;
                }
                return super.commitContent(inputContentInfo, i2, bundle);
            }
        };
    }
}
