package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.IconCompat;
import com.vuitton.android.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public class NotificationCompat$CallStyle extends NotificationCompat$Style {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11916e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Person f11917f;
    public PendingIntent g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public PendingIntent f11918h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public PendingIntent f11919i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f11920j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Integer f11921k;
    public Integer l;
    public IconCompat m;
    public CharSequence n;

    public static class Api28Impl {
        public static Notification.Builder a(Notification.Builder builder, android.app.Person person) {
            return builder.addPerson(person);
        }

        public static Parcelable b(android.app.Person person) {
            return person;
        }
    }

    public static class Api31Impl {
        public static Notification.CallStyle a(android.app.Person person, PendingIntent pendingIntent, PendingIntent pendingIntent2) {
            return Notification.CallStyle.forIncomingCall(person, pendingIntent, pendingIntent2);
        }

        public static Notification.CallStyle b(android.app.Person person, PendingIntent pendingIntent) {
            return Notification.CallStyle.forOngoingCall(person, pendingIntent);
        }

        public static Notification.CallStyle c(android.app.Person person, PendingIntent pendingIntent, PendingIntent pendingIntent2) {
            return Notification.CallStyle.forScreeningCall(person, pendingIntent, pendingIntent2);
        }

        public static Notification.CallStyle d(Notification.CallStyle callStyle, int i2) {
            return callStyle.setAnswerButtonColorHint(i2);
        }

        public static Notification.CallStyle e(Notification.CallStyle callStyle, int i2) {
            return callStyle.setDeclineButtonColorHint(i2);
        }

        public static Notification.CallStyle f(Notification.CallStyle callStyle, boolean z) {
            return callStyle.setIsVideo(z);
        }

        public static Notification.CallStyle g(Notification.CallStyle callStyle, Icon icon) {
            return callStyle.setVerificationIcon(icon);
        }

        public static Notification.CallStyle h(Notification.CallStyle callStyle, CharSequence charSequence) {
            return callStyle.setVerificationText(charSequence);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface CallType {
    }

    public NotificationCompat$CallStyle(NotificationCompat$Builder notificationCompat$Builder) {
        g(notificationCompat$Builder);
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final void a(Bundle bundle) {
        super.a(bundle);
        bundle.putInt("android.callType", this.f11916e);
        bundle.putBoolean("android.callIsVideo", this.f11920j);
        Person person = this.f11917f;
        if (person != null) {
            bundle.putParcelable("android.callPerson", Api28Impl.b(person.c()));
        }
        IconCompat iconCompat = this.m;
        if (iconCompat != null) {
            bundle.putParcelable("android.verificationIcon", iconCompat.h(this.f11944a.f11907a));
        }
        bundle.putCharSequence("android.verificationText", this.n);
        bundle.putParcelable("android.answerIntent", this.g);
        bundle.putParcelable("android.declineIntent", this.f11918h);
        bundle.putParcelable("android.hangUpIntent", this.f11919i);
        Integer num = this.f11921k;
        if (num != null) {
            bundle.putInt("android.answerColor", num.intValue());
        }
        Integer num2 = this.l;
        if (num2 != null) {
            bundle.putInt("android.declineColor", num2.intValue());
        }
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final void b(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        String string = null;
        callStyleA = null;
        Notification.CallStyle callStyleA = null;
        if (Build.VERSION.SDK_INT < 31) {
            Notification.Builder builder = ((NotificationCompatBuilder) notificationBuilderWithBuilderAccessor).f11948b;
            Person person = this.f11917f;
            builder.setContentTitle(person != null ? person.f11968a : null);
            Bundle bundle = this.f11944a.C;
            CharSequence charSequence = (bundle == null || !bundle.containsKey("android.text")) ? null : this.f11944a.C.getCharSequence("android.text");
            if (charSequence == null) {
                int i2 = this.f11916e;
                if (i2 == 1) {
                    string = this.f11944a.f11907a.getResources().getString(R.string.call_notification_incoming_text);
                } else if (i2 == 2) {
                    string = this.f11944a.f11907a.getResources().getString(R.string.call_notification_ongoing_text);
                } else if (i2 == 3) {
                    string = this.f11944a.f11907a.getResources().getString(R.string.call_notification_screening_text);
                }
                charSequence = string;
            }
            builder.setContentText(charSequence);
            Person person2 = this.f11917f;
            if (person2 != null) {
                IconCompat iconCompat = person2.f11969b;
                if (iconCompat != null) {
                    builder.setLargeIcon(iconCompat.h(this.f11944a.f11907a));
                }
                Api28Impl.a(builder, this.f11917f.c());
            }
            builder.setCategory("call");
            return;
        }
        int i3 = this.f11916e;
        if (i3 == 1) {
            callStyleA = Api31Impl.a(this.f11917f.c(), this.f11918h, this.g);
        } else if (i3 == 2) {
            callStyleA = Api31Impl.b(this.f11917f.c(), this.f11919i);
        } else if (i3 == 3) {
            callStyleA = Api31Impl.c(this.f11917f.c(), this.f11919i, this.g);
        } else if (Log.isLoggable("NotifCompat", 3)) {
            String.valueOf(this.f11916e);
        }
        if (callStyleA != null) {
            callStyleA.setBuilder(((NotificationCompatBuilder) notificationBuilderWithBuilderAccessor).f11948b);
            Integer num = this.f11921k;
            if (num != null) {
                Api31Impl.d(callStyleA, num.intValue());
            }
            Integer num2 = this.l;
            if (num2 != null) {
                Api31Impl.e(callStyleA, num2.intValue());
            }
            Api31Impl.h(callStyleA, this.n);
            IconCompat iconCompat2 = this.m;
            if (iconCompat2 != null) {
                Api31Impl.g(callStyleA, iconCompat2.h(this.f11944a.f11907a));
            }
            Api31Impl.f(callStyleA, this.f11920j);
        }
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final String e() {
        return "androidx.core.app.NotificationCompat$CallStyle";
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final void f(Bundle bundle) {
        super.f(bundle);
        this.f11916e = bundle.getInt("android.callType");
        this.f11920j = bundle.getBoolean("android.callIsVideo");
        if (bundle.containsKey("android.callPerson")) {
            this.f11917f = Person.a((android.app.Person) bundle.getParcelable("android.callPerson"));
        } else if (bundle.containsKey("android.callPersonCompat")) {
            this.f11917f = Person.b(bundle.getBundle("android.callPersonCompat"));
        }
        if (bundle.containsKey("android.verificationIcon")) {
            this.m = IconCompat.b((Icon) bundle.getParcelable("android.verificationIcon"));
        } else if (bundle.containsKey("android.verificationIconCompat")) {
            this.m = IconCompat.a(bundle.getBundle("android.verificationIconCompat"));
        }
        this.n = bundle.getCharSequence("android.verificationText");
        this.g = (PendingIntent) bundle.getParcelable("android.answerIntent");
        this.f11918h = (PendingIntent) bundle.getParcelable("android.declineIntent");
        this.f11919i = (PendingIntent) bundle.getParcelable("android.hangUpIntent");
        this.f11921k = bundle.containsKey("android.answerColor") ? Integer.valueOf(bundle.getInt("android.answerColor")) : null;
        this.l = bundle.containsKey("android.declineColor") ? Integer.valueOf(bundle.getInt("android.declineColor")) : null;
    }

    public final NotificationCompat$Action h(int i2, int i3, Integer num, int i4, PendingIntent pendingIntent) {
        if (num == null) {
            num = Integer.valueOf(ContextCompat.getColor(this.f11944a.f11907a, i4));
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) this.f11944a.f11907a.getResources().getString(i3));
        spannableStringBuilder.setSpan(new ForegroundColorSpan(num.intValue()), 0, spannableStringBuilder.length(), 18);
        Context context = this.f11944a.f11907a;
        PorterDuff.Mode mode = IconCompat.f12064k;
        context.getClass();
        NotificationCompat$Action notificationCompat$ActionA = new NotificationCompat$Action.Builder(IconCompat.e(context.getResources(), context.getPackageName(), i2), spannableStringBuilder, pendingIntent).a();
        notificationCompat$ActionA.f11876a.putBoolean("key_action_priority", true);
        return notificationCompat$ActionA;
    }

    public NotificationCompat$CallStyle() {
    }
}
