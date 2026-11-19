.class public final enum Lorg/teleal/cling/support/model/BrowseFlag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/teleal/cling/support/model/BrowseFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/teleal/cling/support/model/BrowseFlag;

.field public static final enum DIRECT_CHILDREN:Lorg/teleal/cling/support/model/BrowseFlag;

.field public static final enum METADATA:Lorg/teleal/cling/support/model/BrowseFlag;


# instance fields
.field private protocolString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/teleal/cling/support/model/BrowseFlag;

    const/4 v1, 0x0

    const-string v2, "BrowseMetadata"

    const-string v3, "METADATA"

    invoke-direct {v0, v3, v1, v2}, Lorg/teleal/cling/support/model/BrowseFlag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/BrowseFlag;->METADATA:Lorg/teleal/cling/support/model/BrowseFlag;

    new-instance v1, Lorg/teleal/cling/support/model/BrowseFlag;

    const/4 v2, 0x1

    const-string v3, "BrowseDirectChildren"

    const-string v4, "DIRECT_CHILDREN"

    invoke-direct {v1, v4, v2, v3}, Lorg/teleal/cling/support/model/BrowseFlag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/teleal/cling/support/model/BrowseFlag;->DIRECT_CHILDREN:Lorg/teleal/cling/support/model/BrowseFlag;

    filled-new-array {v0, v1}, [Lorg/teleal/cling/support/model/BrowseFlag;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/support/model/BrowseFlag;->$VALUES:[Lorg/teleal/cling/support/model/BrowseFlag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/teleal/cling/support/model/BrowseFlag;->protocolString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/BrowseFlag;
    .locals 1

    const-class v0, Lorg/teleal/cling/support/model/BrowseFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/teleal/cling/support/model/BrowseFlag;

    return-object p0
.end method

.method public static values()[Lorg/teleal/cling/support/model/BrowseFlag;
    .locals 1

    sget-object v0, Lorg/teleal/cling/support/model/BrowseFlag;->$VALUES:[Lorg/teleal/cling/support/model/BrowseFlag;

    invoke-virtual {v0}, [Lorg/teleal/cling/support/model/BrowseFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/teleal/cling/support/model/BrowseFlag;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/support/model/BrowseFlag;->protocolString:Ljava/lang/String;

    return-object p0
.end method
