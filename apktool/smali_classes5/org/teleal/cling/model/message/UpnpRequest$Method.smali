.class public final enum Lorg/teleal/cling/model/message/UpnpRequest$Method;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/model/message/UpnpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/teleal/cling/model/message/UpnpRequest$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/teleal/cling/model/message/UpnpRequest$Method;

.field public static final enum GET:Lorg/teleal/cling/model/message/UpnpRequest$Method;

.field public static final enum MSEARCH:Lorg/teleal/cling/model/message/UpnpRequest$Method;

.field public static final enum NOTIFY:Lorg/teleal/cling/model/message/UpnpRequest$Method;

.field public static final enum POST:Lorg/teleal/cling/model/message/UpnpRequest$Method;

.field public static final enum SUBSCRIBE:Lorg/teleal/cling/model/message/UpnpRequest$Method;

.field public static final enum UNKNOWN:Lorg/teleal/cling/model/message/UpnpRequest$Method;

.field public static final enum UNSUBSCRIBE:Lorg/teleal/cling/model/message/UpnpRequest$Method;

.field private static byName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/teleal/cling/model/message/UpnpRequest$Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private httpName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lorg/teleal/cling/model/message/UpnpRequest$Method;

    const-string v1, "GET"

    const/4 v7, 0x0

    invoke-direct {v0, v1, v7, v1}, Lorg/teleal/cling/model/message/UpnpRequest$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/model/message/UpnpRequest$Method;->GET:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    new-instance v1, Lorg/teleal/cling/model/message/UpnpRequest$Method;

    const-string v2, "POST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lorg/teleal/cling/model/message/UpnpRequest$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/teleal/cling/model/message/UpnpRequest$Method;->POST:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    new-instance v2, Lorg/teleal/cling/model/message/UpnpRequest$Method;

    const-string v3, "NOTIFY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v3}, Lorg/teleal/cling/model/message/UpnpRequest$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/teleal/cling/model/message/UpnpRequest$Method;->NOTIFY:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    new-instance v3, Lorg/teleal/cling/model/message/UpnpRequest$Method;

    const/4 v4, 0x3

    const-string v5, "M-SEARCH"

    const-string v6, "MSEARCH"

    invoke-direct {v3, v6, v4, v5}, Lorg/teleal/cling/model/message/UpnpRequest$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/teleal/cling/model/message/UpnpRequest$Method;->MSEARCH:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    new-instance v4, Lorg/teleal/cling/model/message/UpnpRequest$Method;

    const-string v5, "SUBSCRIBE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v5}, Lorg/teleal/cling/model/message/UpnpRequest$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/teleal/cling/model/message/UpnpRequest$Method;->SUBSCRIBE:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    new-instance v5, Lorg/teleal/cling/model/message/UpnpRequest$Method;

    const-string v6, "UNSUBSCRIBE"

    const/4 v8, 0x5

    invoke-direct {v5, v6, v8, v6}, Lorg/teleal/cling/model/message/UpnpRequest$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/teleal/cling/model/message/UpnpRequest$Method;->UNSUBSCRIBE:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    new-instance v6, Lorg/teleal/cling/model/message/UpnpRequest$Method;

    const-string v8, "UNKNOWN"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v8}, Lorg/teleal/cling/model/message/UpnpRequest$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/teleal/cling/model/message/UpnpRequest$Method;->UNKNOWN:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    filled-new-array/range {v0 .. v6}, [Lorg/teleal/cling/model/message/UpnpRequest$Method;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/model/message/UpnpRequest$Method;->$VALUES:[Lorg/teleal/cling/model/message/UpnpRequest$Method;

    new-instance v0, Lorg/teleal/cling/model/message/UpnpRequest$Method$1;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lorg/teleal/cling/model/message/UpnpRequest$Method;->values()[Lorg/teleal/cling/model/message/UpnpRequest$Method;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v7, v2, :cond_0

    aget-object v3, v1, v7

    iget-object v4, v3, Lorg/teleal/cling/model/message/UpnpRequest$Method;->httpName:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    sput-object v0, Lorg/teleal/cling/model/message/UpnpRequest$Method;->byName:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/teleal/cling/model/message/UpnpRequest$Method;->httpName:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lorg/teleal/cling/model/message/UpnpRequest$Method;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lorg/teleal/cling/model/message/UpnpRequest$Method;->UNKNOWN:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    return-object p0

    :cond_0
    sget-object v0, Lorg/teleal/cling/model/message/UpnpRequest$Method;->byName:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/teleal/cling/model/message/UpnpRequest$Method;

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Lorg/teleal/cling/model/message/UpnpRequest$Method;->UNKNOWN:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/message/UpnpRequest$Method;
    .locals 1

    const-class v0, Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/teleal/cling/model/message/UpnpRequest$Method;

    return-object p0
.end method

.method public static values()[Lorg/teleal/cling/model/message/UpnpRequest$Method;
    .locals 1

    sget-object v0, Lorg/teleal/cling/model/message/UpnpRequest$Method;->$VALUES:[Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v0}, [Lorg/teleal/cling/model/message/UpnpRequest$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/teleal/cling/model/message/UpnpRequest$Method;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/model/message/UpnpRequest$Method;->httpName:Ljava/lang/String;

    return-object p0
.end method
