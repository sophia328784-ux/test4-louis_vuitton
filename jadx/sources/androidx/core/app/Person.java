package androidx.core.app;

import android.os.Bundle;
import androidx.core.graphics.drawable.IconCompat;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class Person {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public CharSequence f11968a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public IconCompat f11969b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f11970c;
    public String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f11971e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f11972f;

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public CharSequence f11973a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public IconCompat f11974b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f11975c;
        public String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f11976e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f11977f;

        public final Person a() {
            Person person = new Person();
            person.f11968a = this.f11973a;
            person.f11969b = this.f11974b;
            person.f11970c = this.f11975c;
            person.d = this.d;
            person.f11971e = this.f11976e;
            person.f11972f = this.f11977f;
            return person;
        }
    }

    public static Person a(android.app.Person person) {
        Builder builder = new Builder();
        builder.f11973a = person.getName();
        builder.f11974b = person.getIcon() != null ? IconCompat.b(person.getIcon()) : null;
        builder.f11975c = person.getUri();
        builder.d = person.getKey();
        builder.f11976e = person.isBot();
        builder.f11977f = person.isImportant();
        return builder.a();
    }

    public static Person b(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("icon");
        Builder builder = new Builder();
        builder.f11973a = bundle.getCharSequence("name");
        builder.f11974b = bundle2 != null ? IconCompat.a(bundle2) : null;
        builder.f11975c = bundle.getString("uri");
        builder.d = bundle.getString(ConfigurationName.KEY);
        builder.f11976e = bundle.getBoolean("isBot");
        builder.f11977f = bundle.getBoolean("isImportant");
        return builder.a();
    }

    public final android.app.Person c() {
        android.app.Person.Builder name = new android.app.Person.Builder().setName(this.f11968a);
        IconCompat iconCompat = this.f11969b;
        return name.setIcon(iconCompat != null ? iconCompat.h(null) : null).setUri(this.f11970c).setKey(this.d).setBot(this.f11971e).setImportant(this.f11972f).build();
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof Person)) {
            return false;
        }
        Person person = (Person) obj;
        String str = this.d;
        String str2 = person.d;
        if (str == null && str2 == null) {
            return Objects.equals(Objects.toString(this.f11968a), Objects.toString(person.f11968a)) && Objects.equals(this.f11970c, person.f11970c) && Boolean.valueOf(this.f11971e).equals(Boolean.valueOf(person.f11971e)) && Boolean.valueOf(this.f11972f).equals(Boolean.valueOf(person.f11972f));
        }
        return Objects.equals(str, str2);
    }

    public final int hashCode() {
        String str = this.d;
        return str != null ? str.hashCode() : Objects.hash(this.f11968a, this.f11970c, Boolean.valueOf(this.f11971e), Boolean.valueOf(this.f11972f));
    }
}
