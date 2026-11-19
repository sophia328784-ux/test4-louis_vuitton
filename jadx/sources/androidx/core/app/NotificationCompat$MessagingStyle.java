package androidx.core.app;

import android.app.Notification;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.core.graphics.drawable.IconCompat;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class NotificationCompat$MessagingStyle extends NotificationCompat$Style {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f11923e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f11924f = new ArrayList();
    public Person g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public CharSequence f11925h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Boolean f11926i;

    public static class Api24Impl {
        public static Notification.MessagingStyle a(Notification.MessagingStyle messagingStyle, Notification.MessagingStyle.Message message) {
            return messagingStyle.addMessage(message);
        }

        public static Notification.MessagingStyle b(Notification.MessagingStyle messagingStyle, CharSequence charSequence) {
            return messagingStyle.setConversationTitle(charSequence);
        }
    }

    public static class Api26Impl {
        public static Notification.MessagingStyle a(Notification.MessagingStyle messagingStyle, Notification.MessagingStyle.Message message) {
            return messagingStyle.addHistoricMessage(message);
        }
    }

    public static class Api28Impl {
        public static Notification.MessagingStyle a(android.app.Person person) {
            return new Notification.MessagingStyle(person);
        }

        public static Notification.MessagingStyle b(Notification.MessagingStyle messagingStyle, boolean z) {
            return messagingStyle.setGroupConversation(z);
        }
    }

    public NotificationCompat$MessagingStyle(Person person) {
        if (TextUtils.isEmpty(person.f11968a)) {
            md.n("User's name must not be empty.");
            throw null;
        }
        this.g = person;
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final void a(Bundle bundle) {
        Bundle bundle2;
        super.a(bundle);
        bundle.putCharSequence("android.selfDisplayName", this.g.f11968a);
        Person person = this.g;
        person.getClass();
        Bundle bundle3 = new Bundle();
        bundle3.putCharSequence("name", person.f11968a);
        IconCompat iconCompat = person.f11969b;
        if (iconCompat != null) {
            bundle2 = new Bundle();
            switch (iconCompat.f12065a) {
                case -1:
                    bundle2.putParcelable("obj", (Parcelable) iconCompat.f12066b);
                    break;
                case 0:
                default:
                    md.n("Invalid icon");
                    return;
                case 1:
                case 5:
                    bundle2.putParcelable("obj", (Bitmap) iconCompat.f12066b);
                    break;
                case 2:
                case 4:
                case 6:
                    bundle2.putString("obj", (String) iconCompat.f12066b);
                    break;
                case 3:
                    bundle2.putByteArray("obj", (byte[]) iconCompat.f12066b);
                    break;
            }
            bundle2.putInt("type", iconCompat.f12065a);
            bundle2.putInt("int1", iconCompat.f12068e);
            bundle2.putInt("int2", iconCompat.f12069f);
            bundle2.putString("string1", iconCompat.f12072j);
            ColorStateList colorStateList = iconCompat.g;
            if (colorStateList != null) {
                bundle2.putParcelable("tint_list", colorStateList);
            }
            PorterDuff.Mode mode = iconCompat.f12070h;
            if (mode != IconCompat.f12064k) {
                bundle2.putString("tint_mode", mode.name());
            }
        } else {
            bundle2 = null;
        }
        bundle3.putBundle("icon", bundle2);
        bundle3.putString("uri", person.f11970c);
        bundle3.putString(ConfigurationName.KEY, person.d);
        bundle3.putBoolean("isBot", person.f11971e);
        bundle3.putBoolean("isImportant", person.f11972f);
        bundle.putBundle("android.messagingStyleUser", bundle3);
        bundle.putCharSequence("android.hiddenConversationTitle", this.f11925h);
        if (this.f11925h != null && this.f11926i.booleanValue()) {
            bundle.putCharSequence("android.conversationTitle", this.f11925h);
        }
        ArrayList arrayList = this.f11923e;
        if (!arrayList.isEmpty()) {
            bundle.putParcelableArray("android.messages", Message.a(arrayList));
        }
        ArrayList arrayList2 = this.f11924f;
        if (!arrayList2.isEmpty()) {
            bundle.putParcelableArray("android.messages.historic", Message.a(arrayList2));
        }
        Boolean bool = this.f11926i;
        if (bool != null) {
            bundle.putBoolean("android.isGroupConversation", bool.booleanValue());
        }
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final void b(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        NotificationCompat$Builder notificationCompat$Builder = this.f11944a;
        boolean zBooleanValue = false;
        if (notificationCompat$Builder == null || notificationCompat$Builder.f11907a.getApplicationInfo().targetSdkVersion >= 28 || this.f11926i != null) {
            Boolean bool = this.f11926i;
            if (bool != null) {
                zBooleanValue = bool.booleanValue();
            }
        } else if (this.f11925h != null) {
            zBooleanValue = true;
        }
        this.f11926i = Boolean.valueOf(zBooleanValue);
        Notification.MessagingStyle messagingStyleA = Api28Impl.a(this.g.c());
        Iterator it = this.f11923e.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Message message = (Message) it.next();
            Person person = message.f11929c;
            Notification.MessagingStyle.Message messageB = Message.Api28Impl.b(message.f11927a, message.f11928b, person != null ? person.c() : null);
            String str = message.f11930e;
            if (str != null) {
                Message.Api24Impl.a(messageB, str, message.f11931f);
            }
            Api24Impl.a(messagingStyleA, messageB);
        }
        for (Message message2 : this.f11924f) {
            Person person2 = message2.f11929c;
            Notification.MessagingStyle.Message messageB2 = Message.Api28Impl.b(message2.f11927a, message2.f11928b, person2 == null ? null : person2.c());
            String str2 = message2.f11930e;
            if (str2 != null) {
                Message.Api24Impl.a(messageB2, str2, message2.f11931f);
            }
            Api26Impl.a(messagingStyleA, messageB2);
        }
        this.f11926i.getClass();
        Api24Impl.b(messagingStyleA, this.f11925h);
        Api28Impl.b(messagingStyleA, this.f11926i.booleanValue());
        messagingStyleA.setBuilder(((NotificationCompatBuilder) notificationBuilderWithBuilderAccessor).f11948b);
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final void c(Bundle bundle) {
        super.c(bundle);
        bundle.remove("android.messagingStyleUser");
        bundle.remove("android.selfDisplayName");
        bundle.remove("android.conversationTitle");
        bundle.remove("android.hiddenConversationTitle");
        bundle.remove("android.messages");
        bundle.remove("android.messages.historic");
        bundle.remove("android.isGroupConversation");
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final String e() {
        return "androidx.core.app.NotificationCompat$MessagingStyle";
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final void f(Bundle bundle) {
        super.f(bundle);
        ArrayList arrayList = this.f11923e;
        arrayList.clear();
        if (bundle.containsKey("android.messagingStyleUser")) {
            this.g = Person.b(bundle.getBundle("android.messagingStyleUser"));
        } else {
            Person.Builder builder = new Person.Builder();
            builder.f11973a = bundle.getString("android.selfDisplayName");
            this.g = builder.a();
        }
        CharSequence charSequence = bundle.getCharSequence("android.conversationTitle");
        this.f11925h = charSequence;
        if (charSequence == null) {
            this.f11925h = bundle.getCharSequence("android.hiddenConversationTitle");
        }
        Parcelable[] parcelableArray = bundle.getParcelableArray("android.messages");
        if (parcelableArray != null) {
            arrayList.addAll(Message.b(parcelableArray));
        }
        Parcelable[] parcelableArray2 = bundle.getParcelableArray("android.messages.historic");
        if (parcelableArray2 != null) {
            this.f11924f.addAll(Message.b(parcelableArray2));
        }
        if (bundle.containsKey("android.isGroupConversation")) {
            this.f11926i = Boolean.valueOf(bundle.getBoolean("android.isGroupConversation"));
        }
    }

    public static final class Message {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final CharSequence f11927a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f11928b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Person f11929c;
        public final Bundle d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public String f11930e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Uri f11931f;

        public static class Api24Impl {
            public static Notification.MessagingStyle.Message a(Notification.MessagingStyle.Message message, String str, Uri uri) {
                return message.setData(str, uri);
            }
        }

        public static class Api28Impl {
            public static Parcelable a(android.app.Person person) {
                return person;
            }

            public static Notification.MessagingStyle.Message b(CharSequence charSequence, long j2, android.app.Person person) {
                return new Notification.MessagingStyle.Message(charSequence, j2, person);
            }
        }

        public Message(CharSequence charSequence, long j2, Person person) {
            this.d = new Bundle();
            this.f11927a = charSequence;
            this.f11928b = j2;
            this.f11929c = person;
        }

        public static Bundle[] a(ArrayList arrayList) {
            Bundle[] bundleArr = new Bundle[arrayList.size()];
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                Message message = (Message) arrayList.get(i2);
                Person person = message.f11929c;
                Bundle bundle = new Bundle();
                CharSequence charSequence = message.f11927a;
                if (charSequence != null) {
                    bundle.putCharSequence("text", charSequence);
                }
                bundle.putLong("time", message.f11928b);
                if (person != null) {
                    bundle.putCharSequence("sender", person.f11968a);
                    bundle.putParcelable("sender_person", Api28Impl.a(person.c()));
                }
                String str = message.f11930e;
                if (str != null) {
                    bundle.putString("type", str);
                }
                Uri uri = message.f11931f;
                if (uri != null) {
                    bundle.putParcelable("uri", uri);
                }
                Bundle bundle2 = message.d;
                if (bundle2 != null) {
                    bundle.putBundle("extras", bundle2);
                }
                bundleArr[i2] = bundle;
            }
            return bundleArr;
        }

        public static ArrayList b(Parcelable[] parcelableArr) {
            Person personA;
            ArrayList arrayList = new ArrayList(parcelableArr.length);
            for (Parcelable parcelable : parcelableArr) {
                if (parcelable instanceof Bundle) {
                    Bundle bundle = (Bundle) parcelable;
                    Message message = null;
                    try {
                        if (bundle.containsKey("text") && bundle.containsKey("time")) {
                            if (bundle.containsKey("person")) {
                                personA = Person.b(bundle.getBundle("person"));
                            } else if (bundle.containsKey("sender_person")) {
                                personA = Person.a((android.app.Person) bundle.getParcelable("sender_person"));
                            } else if (bundle.containsKey("sender")) {
                                Person.Builder builder = new Person.Builder();
                                builder.f11973a = bundle.getCharSequence("sender");
                                personA = builder.a();
                            } else {
                                personA = null;
                            }
                            Message message2 = new Message(bundle.getCharSequence("text"), bundle.getLong("time"), personA);
                            if (bundle.containsKey("type") && bundle.containsKey("uri")) {
                                String string = bundle.getString("type");
                                Uri uri = (Uri) bundle.getParcelable("uri");
                                message2.f11930e = string;
                                message2.f11931f = uri;
                            }
                            if (bundle.containsKey("extras")) {
                                message2.d.putAll(bundle.getBundle("extras"));
                            }
                            message = message2;
                        }
                    } catch (ClassCastException unused) {
                    }
                    if (message != null) {
                        arrayList.add(message);
                    }
                }
            }
            return arrayList;
        }

        @Deprecated
        public Message(CharSequence charSequence, long j2, CharSequence charSequence2) {
            Person.Builder builder = new Person.Builder();
            builder.f11973a = charSequence2;
            this(charSequence, j2, builder.a());
        }
    }

    @Deprecated
    public NotificationCompat$MessagingStyle(CharSequence charSequence) {
        Person.Builder builder = new Person.Builder();
        builder.f11973a = charSequence;
        this.g = builder.a();
    }

    public NotificationCompat$MessagingStyle() {
    }
}
