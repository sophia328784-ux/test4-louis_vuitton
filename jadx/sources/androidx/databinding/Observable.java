package androidx.databinding;

/* JADX INFO: loaded from: classes.dex */
public interface Observable {

    public static abstract class OnPropertyChangedCallback {
        public abstract void a(Observable observable, int i2);
    }

    void a(OnPropertyChangedCallback onPropertyChangedCallback);
}
