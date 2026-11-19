.class public final Lcom/sightcall/universal/internal/messaging/Message$Outgoing;
.super Lcom/sightcall/universal/internal/messaging/Message;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/messaging/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Outgoing"
.end annotation


# instance fields
.field private success:Z


# direct methods
.method private constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v5, ""

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sightcall/universal/internal/messaging/Message;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/sightcall/universal/internal/messaging/Message;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 11
    invoke-direct/range {p0 .. p5}, Lcom/sightcall/universal/internal/messaging/Message$Outgoing;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sightcall/universal/internal/messaging/Message$Outgoing;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sightcall/universal/internal/messaging/Message$Outgoing;->success:Z

    return-void
.end method


# virtual methods
.method public isSuccess()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/internal/messaging/Message$Outgoing;->success:Z

    return p0
.end method

.method public success(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sightcall/universal/internal/messaging/Message$Outgoing;->success:Z

    return-void
.end method
