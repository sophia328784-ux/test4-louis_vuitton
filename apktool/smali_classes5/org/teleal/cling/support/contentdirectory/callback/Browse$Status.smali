.class public final enum Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/contentdirectory/callback/Browse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

.field public static final enum LOADING:Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

.field public static final enum NO_CONTENT:Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

.field public static final enum OK:Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;


# instance fields
.field private defaultMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

    const/4 v1, 0x0

    const-string v2, "No Content"

    const-string v3, "NO_CONTENT"

    invoke-direct {v0, v3, v1, v2}, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;->NO_CONTENT:Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

    new-instance v1, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

    const/4 v2, 0x1

    const-string v3, "Loading..."

    const-string v4, "LOADING"

    invoke-direct {v1, v4, v2, v3}, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;->LOADING:Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

    new-instance v2, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

    const-string v3, "OK"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v3}, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;->OK:Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

    filled-new-array {v0, v1, v2}, [Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;->$VALUES:[Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;->defaultMessage:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;
    .locals 1

    const-class v0, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

    return-object p0
.end method

.method public static values()[Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;
    .locals 1

    sget-object v0, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;->$VALUES:[Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

    invoke-virtual {v0}, [Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

    return-object v0
.end method
