.class Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/sightcall/universal/internal/messaging/Message$Incoming;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sightcall/universal/internal/messaging/Message$Incoming;Lcom/sightcall/universal/internal/messaging/Message$Incoming;)I
    .locals 2

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/messaging/Message;->timestamp()J

    move-result-wide p0

    invoke-virtual {p2}, Lcom/sightcall/universal/internal/messaging/Message;->timestamp()J

    move-result-wide v0

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 20
    check-cast p1, Lcom/sightcall/universal/internal/messaging/Message$Incoming;

    check-cast p2, Lcom/sightcall/universal/internal/messaging/Message$Incoming;

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/universal/internal/messaging/MessagesOverlayAdapter$1;->compare(Lcom/sightcall/universal/internal/messaging/Message$Incoming;Lcom/sightcall/universal/internal/messaging/Message$Incoming;)I

    move-result p0

    return p0
.end method
