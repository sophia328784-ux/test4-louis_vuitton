.class public Lorg/teleal/cling/support/model/item/AudioBook;
.super Lorg/teleal/cling/support/model/item/AudioItem;
.source "SourceFile"


# static fields
.field public static final l:Lorg/teleal/cling/support/model/DIDLObject$Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Class;

    const-string v1, "object.item.audioItem.audioBook"

    invoke-direct {v0, v1}, Lorg/teleal/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/item/AudioBook;->l:Lorg/teleal/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lorg/teleal/cling/support/model/item/AudioItem;-><init>()V

    .line 50
    sget-object v0, Lorg/teleal/cling/support/model/item/AudioBook;->l:Lorg/teleal/cling/support/model/DIDLObject$Class;

    .line 51
    iput-object v0, p0, Lorg/teleal/cling/support/model/DIDLObject;->g:Lorg/teleal/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/Person;Lorg/teleal/cling/support/model/Person;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/support/model/item/AudioItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V

    sget-object p0, Lorg/teleal/cling/support/model/item/AudioBook;->l:Lorg/teleal/cling/support/model/DIDLObject$Class;

    iput-object p0, v0, Lorg/teleal/cling/support/model/DIDLObject;->g:Lorg/teleal/cling/support/model/DIDLObject$Class;

    if-eqz p5, :cond_0

    new-instance p0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;

    invoke-direct {p0, p5}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;-><init>(Lorg/teleal/cling/support/model/Person;)V

    invoke-virtual {v0, p0}, Lorg/teleal/cling/support/model/DIDLObject;->a(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    :cond_0
    if-eqz p6, :cond_1

    new-instance p0, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;

    invoke-direct {p0, p6}, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;-><init>(Lorg/teleal/cling/support/model/Person;)V

    invoke-virtual {v0, p0}, Lorg/teleal/cling/support/model/DIDLObject;->a(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    :cond_1
    if-eqz p7, :cond_2

    new-instance p0, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$DATE;

    invoke-direct {p0, p7}, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$DATE;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lorg/teleal/cling/support/model/DIDLObject;->b(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    :cond_2
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Lorg/teleal/cling/support/model/container/Container;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V
    .locals 1

    .line 44
    iget-object p2, p2, Lorg/teleal/cling/support/model/DIDLObject;->a:Ljava/lang/String;

    move-object v0, p5

    .line 45
    new-instance p5, Lorg/teleal/cling/support/model/Person;

    invoke-direct {p5, v0}, Lorg/teleal/cling/support/model/Person;-><init>(Ljava/lang/String;)V

    move-object v0, p6

    new-instance p6, Lorg/teleal/cling/support/model/Person;

    invoke-direct {p6, v0}, Lorg/teleal/cling/support/model/Person;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p8}, Lorg/teleal/cling/support/model/item/AudioBook;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/Person;Lorg/teleal/cling/support/model/Person;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Lorg/teleal/cling/support/model/container/Container;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V
    .locals 9

    .line 46
    iget-object v2, p2, Lorg/teleal/cling/support/model/DIDLObject;->a:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v8, p5

    .line 47
    invoke-direct/range {v0 .. v8}, Lorg/teleal/cling/support/model/item/AudioBook;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/Person;Lorg/teleal/cling/support/model/Person;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/item/Item;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/model/item/AudioItem;-><init>(Lorg/teleal/cling/support/model/item/Item;)V

    return-void
.end method
