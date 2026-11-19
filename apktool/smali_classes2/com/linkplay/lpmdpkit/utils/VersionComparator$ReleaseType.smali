.class final enum Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linkplay/lpmdpkit/utils/VersionComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReleaseType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

.field public static final enum ALPHA:Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

.field public static final enum BETA:Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

.field public static final enum PRE_ALPHA:Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

.field public static final enum RC:Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

.field public static final enum SNAPSHOT:Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

.field public static final enum STABLE:Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;


# direct methods
.method private static synthetic $values()[Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;
    .locals 6

    sget-object v0, Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;->SNAPSHOT:Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

    sget-object v1, Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;->PRE_ALPHA:Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

    sget-object v2, Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;->ALPHA:Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

    sget-object v3, Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;->BETA:Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

    sget-object v4, Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;->RC:Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

    sget-object v5, Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;->STABLE:Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

    filled-new-array/range {v0 .. v5}, [Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

    const-string v1, "SNAPSHOT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;->SNAPSHOT:Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

    new-instance v0, Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

    const-string v1, "PRE_ALPHA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;->PRE_ALPHA:Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

    new-instance v0, Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

    const-string v1, "ALPHA"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;->ALPHA:Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

    new-instance v0, Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

    const-string v1, "BETA"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;->BETA:Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

    new-instance v0, Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

    const-string v1, "RC"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;->RC:Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

    new-instance v0, Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

    const-string v1, "STABLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;->STABLE:Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

    invoke-static {}, Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;->$values()[Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

    move-result-object v0

    sput-object v0, Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;->$VALUES:[Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;
    .locals 1

    const-class v0, Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

    return-object p0
.end method

.method public static values()[Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;
    .locals 1

    sget-object v0, Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;->$VALUES:[Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

    invoke-virtual {v0}, [Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

    return-object v0
.end method
