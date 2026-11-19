.class public Lcom/akamai/botman/CYFMonitor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akamai/botman/CYFMonitor$CYFSDKInitCallback;,
        Lcom/akamai/botman/CYFMonitor$ChallengeActionCallback;
    }
.end annotation


# static fields
.field public static a:[C


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 7

    sget-object v0, Lcom/akamai/botman/CYFMonitor;->a:[C

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x7fff

    new-array v2, v0, [C

    sput-object v2, Lcom/akamai/botman/CYFMonitor;->a:[C

    const/4 v2, 0x3

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_0

    xor-int v4, v2, v3

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x25

    rem-int/lit8 v2, v2, 0x3f

    sget-object v4, Lcom/akamai/botman/CYFMonitor;->a:[C

    int-to-char v5, v2

    aput-char v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0xe

    new-array v2, v0, [C

    const-string v3, "O^}xiwj0u`[{zr"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    :goto_1
    if-ge v1, v0, :cond_1

    aget-char v4, v2, v1

    aget-char v5, v3, v1

    sget-object v6, Lcom/akamai/botman/CYFMonitor;->a:[C

    aget-char v6, v6, v1

    xor-int/2addr v5, v6

    int-to-char v5, v5

    add-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
