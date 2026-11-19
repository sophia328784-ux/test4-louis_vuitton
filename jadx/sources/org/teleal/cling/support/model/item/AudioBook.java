package org.teleal.cling.support.model.item;

import org.teleal.cling.support.model.DIDLObject;
import org.teleal.cling.support.model.DIDLObject$Property$DC$CONTRIBUTOR;
import org.teleal.cling.support.model.DIDLObject$Property$DC$DATE;
import org.teleal.cling.support.model.DIDLObject$Property$UPNP$PRODUCER;
import org.teleal.cling.support.model.Person;
import org.teleal.cling.support.model.Res;
import org.teleal.cling.support.model.container.Container;

/* JADX INFO: loaded from: classes5.dex */
public class AudioBook extends AudioItem {
    public static final DIDLObject.Class l = new DIDLObject.Class("object.item.audioItem.audioBook");

    public AudioBook(String str, String str2, String str3, String str4, Person person, Person person2, String str5, Res... resArr) {
        super(str, str2, str3, str4, resArr);
        this.g = l;
        if (person != null) {
            a(new DIDLObject$Property$UPNP$PRODUCER(person));
        }
        if (person2 != null) {
            a(new DIDLObject$Property$DC$CONTRIBUTOR(person2));
        }
        if (str5 != null) {
            b(new DIDLObject$Property$DC$DATE(str5));
        }
    }

    public AudioBook(String str, Container container, String str2, String str3, String str4, String str5, String str6, Res... resArr) {
        this(str, container.f78569a, str2, str3, new Person(str4), new Person(str5), str6, resArr);
    }

    public AudioBook(String str, Container container, String str2, String str3, Res... resArr) {
        this(str, container.f78569a, str2, str3, (Person) null, (Person) null, (String) null, resArr);
    }

    public AudioBook(Item item) {
        super(item);
    }

    public AudioBook() {
        this.g = l;
    }
}
