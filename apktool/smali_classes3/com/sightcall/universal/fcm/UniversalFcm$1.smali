.class Lcom/sightcall/universal/fcm/UniversalFcm$1;
.super Lcom/sightcall/universal/util/Lazy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/fcm/UniversalFcm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sightcall/universal/util/Lazy<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Class<",
        "*>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/fcm/UniversalFcm;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/fcm/UniversalFcm;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/fcm/UniversalFcm$1;->this$0:Lcom/sightcall/universal/fcm/UniversalFcm;

    invoke-direct {p0}, Lcom/sightcall/universal/util/Lazy;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic init()Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/sightcall/universal/fcm/UniversalFcm$1;->init()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public init()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "ping"

    const-class v1, Lcom/sightcall/universal/fcm/messages/Ping;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "test"

    const-class v1, Lcom/sightcall/universal/fcm/messages/Test;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "guest-ready"

    const-class v1, Lcom/sightcall/universal/fcm/messages/GuestReady;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pincode-created"

    const-class v1, Lcom/sightcall/universal/fcm/messages/Code$Created;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pincode-resent"

    const-class v1, Lcom/sightcall/universal/fcm/messages/Code$Resent;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pincode-destroyed"

    const-class v1, Lcom/sightcall/universal/fcm/messages/Code$Destroyed;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
