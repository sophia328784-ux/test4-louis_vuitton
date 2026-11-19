package androidx.emoji2.viewsintegration;

import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import androidx.core.util.Preconditions;
import androidx.emoji2.text.EmojiCompat;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: loaded from: classes.dex */
public final class EmojiEditTextHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HelperInternal19 f13131a;

    public static class HelperInternal {
    }

    public static class HelperInternal19 extends HelperInternal {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final EditText f13132a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final EmojiTextWatcher f13133b;

        public HelperInternal19(EditText editText, boolean z) {
            this.f13132a = editText;
            EmojiTextWatcher emojiTextWatcher = new EmojiTextWatcher(editText, z);
            this.f13133b = emojiTextWatcher;
            editText.addTextChangedListener(emojiTextWatcher);
            if (EmojiEditableFactory.f13135b == null) {
                synchronized (EmojiEditableFactory.f13134a) {
                    try {
                        if (EmojiEditableFactory.f13135b == null) {
                            EmojiEditableFactory emojiEditableFactory = new EmojiEditableFactory();
                            try {
                                EmojiEditableFactory.f13136c = Class.forName("android.text.DynamicLayout$ChangeWatcher", false, EmojiEditableFactory.class.getClassLoader());
                            } catch (Throwable unused) {
                            }
                            EmojiEditableFactory.f13135b = emojiEditableFactory;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            editText.setEditableFactory(EmojiEditableFactory.f13135b);
        }
    }

    public EmojiEditTextHelper(EditText editText, boolean z) {
        Preconditions.e(editText, "editText cannot be null");
        this.f13131a = new HelperInternal19(editText, z);
    }

    public final KeyListener a(KeyListener keyListener) {
        this.f13131a.getClass();
        if (keyListener instanceof EmojiKeyListener) {
            return keyListener;
        }
        if (keyListener == null) {
            return null;
        }
        return keyListener instanceof NumberKeyListener ? keyListener : new EmojiKeyListener(keyListener);
    }

    public final InputConnection b(InputConnection inputConnection, EditorInfo editorInfo) {
        if (inputConnection == null) {
            return null;
        }
        HelperInternal19 helperInternal19 = this.f13131a;
        helperInternal19.getClass();
        return inputConnection instanceof EmojiInputConnection ? inputConnection : new EmojiInputConnection(helperInternal19.f13132a, inputConnection, editorInfo);
    }

    public final void c(boolean z) {
        EmojiTextWatcher emojiTextWatcher = this.f13131a.f13133b;
        if (emojiTextWatcher.f13150e != z) {
            if (emojiTextWatcher.d != null) {
                EmojiCompat emojiCompatA = EmojiCompat.a();
                EmojiCompat.InitCallback initCallback = emojiTextWatcher.d;
                emojiCompatA.getClass();
                Preconditions.e(initCallback, "initCallback cannot be null");
                ReentrantReadWriteLock reentrantReadWriteLock = emojiCompatA.f13066a;
                reentrantReadWriteLock.writeLock().lock();
                try {
                    emojiCompatA.f13067b.remove(initCallback);
                    reentrantReadWriteLock.writeLock().unlock();
                } catch (Throwable th) {
                    reentrantReadWriteLock.writeLock().unlock();
                    throw th;
                }
            }
            emojiTextWatcher.f13150e = z;
            if (z) {
                EmojiTextWatcher.a(emojiTextWatcher.f13148b, EmojiCompat.a().d());
            }
        }
    }

    public EmojiEditTextHelper(EditText editText) {
        this(editText, true);
    }
}
