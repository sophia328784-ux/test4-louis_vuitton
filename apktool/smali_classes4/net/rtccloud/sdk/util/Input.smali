.class public final enum Lnet/rtccloud/sdk/util/Input;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/rtccloud/sdk/util/Input;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/rtccloud/sdk/util/Input;

.field public static final enum APP_ID:Lnet/rtccloud/sdk/util/Input;

.field public static final enum DISPLAY_NAME:Lnet/rtccloud/sdk/util/Input;

.field public static final enum HASH:Lnet/rtccloud/sdk/util/Input;

.field public static final enum MPID:Lnet/rtccloud/sdk/util/Input;

.field public static final enum PIN:Lnet/rtccloud/sdk/util/Input;

.field public static final enum SUFFIX:Lnet/rtccloud/sdk/util/Input;

.field public static final enum TOKEN:Lnet/rtccloud/sdk/util/Input;

.field public static final enum UID:Lnet/rtccloud/sdk/util/Input;


# instance fields
.field private final nullable:Z

.field public final pattern:Ljava/util/regex/Pattern;


# direct methods
.method private static synthetic $values()[Lnet/rtccloud/sdk/util/Input;
    .locals 8

    sget-object v0, Lnet/rtccloud/sdk/util/Input;->APP_ID:Lnet/rtccloud/sdk/util/Input;

    sget-object v1, Lnet/rtccloud/sdk/util/Input;->UID:Lnet/rtccloud/sdk/util/Input;

    sget-object v2, Lnet/rtccloud/sdk/util/Input;->DISPLAY_NAME:Lnet/rtccloud/sdk/util/Input;

    sget-object v3, Lnet/rtccloud/sdk/util/Input;->TOKEN:Lnet/rtccloud/sdk/util/Input;

    sget-object v4, Lnet/rtccloud/sdk/util/Input;->PIN:Lnet/rtccloud/sdk/util/Input;

    sget-object v5, Lnet/rtccloud/sdk/util/Input;->SUFFIX:Lnet/rtccloud/sdk/util/Input;

    sget-object v6, Lnet/rtccloud/sdk/util/Input;->MPID:Lnet/rtccloud/sdk/util/Input;

    sget-object v7, Lnet/rtccloud/sdk/util/Input;->HASH:Lnet/rtccloud/sdk/util/Input;

    filled-new-array/range {v0 .. v7}, [Lnet/rtccloud/sdk/util/Input;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lnet/rtccloud/sdk/util/Input;

    const/4 v1, 0x0

    const-string v2, "[a-zA-Z0-9]{0,128}"

    const-string v3, "APP_ID"

    invoke-direct {v0, v3, v1, v2}, Lnet/rtccloud/sdk/util/Input;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/rtccloud/sdk/util/Input;->APP_ID:Lnet/rtccloud/sdk/util/Input;

    new-instance v0, Lnet/rtccloud/sdk/util/Input;

    const-string v1, "[^&\"#%?, ]{3,128}"

    const-string v2, "UID"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lnet/rtccloud/sdk/util/Input;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/rtccloud/sdk/util/Input;->UID:Lnet/rtccloud/sdk/util/Input;

    new-instance v0, Lnet/rtccloud/sdk/util/Input;

    const/4 v1, 0x2

    const-string v2, "[^\"\'<>:]{0,128}"

    const-string v4, "DISPLAY_NAME"

    invoke-direct {v0, v4, v1, v2, v3}, Lnet/rtccloud/sdk/util/Input;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lnet/rtccloud/sdk/util/Input;->DISPLAY_NAME:Lnet/rtccloud/sdk/util/Input;

    new-instance v0, Lnet/rtccloud/sdk/util/Input;

    const/4 v1, 0x3

    const-string v2, "[a-fA-F0-9]{0,128}"

    const-string v4, "TOKEN"

    invoke-direct {v0, v4, v1, v2}, Lnet/rtccloud/sdk/util/Input;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/rtccloud/sdk/util/Input;->TOKEN:Lnet/rtccloud/sdk/util/Input;

    new-instance v0, Lnet/rtccloud/sdk/util/Input;

    const/4 v1, 0x4

    const-string v2, "[0-9]{6}"

    const-string v4, "PIN"

    invoke-direct {v0, v4, v1, v2}, Lnet/rtccloud/sdk/util/Input;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/rtccloud/sdk/util/Input;->PIN:Lnet/rtccloud/sdk/util/Input;

    new-instance v0, Lnet/rtccloud/sdk/util/Input;

    const/4 v1, 0x5

    const-string v2, "[a-zA-Z0-9]{1,128}"

    const-string v4, "SUFFIX"

    invoke-direct {v0, v4, v1, v2}, Lnet/rtccloud/sdk/util/Input;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/rtccloud/sdk/util/Input;->SUFFIX:Lnet/rtccloud/sdk/util/Input;

    new-instance v0, Lnet/rtccloud/sdk/util/Input;

    const/4 v1, 0x6

    const-string v2, "[a-zA-Z0-9]{30}"

    const-string v4, "MPID"

    invoke-direct {v0, v4, v1, v2}, Lnet/rtccloud/sdk/util/Input;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/rtccloud/sdk/util/Input;->MPID:Lnet/rtccloud/sdk/util/Input;

    new-instance v0, Lnet/rtccloud/sdk/util/Input;

    const/4 v1, 0x7

    const-string v2, "[a-fA-F0-9]{40}"

    const-string v4, "HASH"

    invoke-direct {v0, v4, v1, v2, v3}, Lnet/rtccloud/sdk/util/Input;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lnet/rtccloud/sdk/util/Input;->HASH:Lnet/rtccloud/sdk/util/Input;

    invoke-static {}, Lnet/rtccloud/sdk/util/Input;->$values()[Lnet/rtccloud/sdk/util/Input;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/util/Input;->$VALUES:[Lnet/rtccloud/sdk/util/Input;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-static {p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lnet/rtccloud/sdk/util/Input;->pattern:Ljava/util/regex/Pattern;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/rtccloud/sdk/util/Input;->nullable:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    invoke-static {p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lnet/rtccloud/sdk/util/Input;->pattern:Ljava/util/regex/Pattern;

    .line 15
    iput-boolean p4, p0, Lnet/rtccloud/sdk/util/Input;->nullable:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/rtccloud/sdk/util/Input;
    .locals 1

    const-class v0, Lnet/rtccloud/sdk/util/Input;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/rtccloud/sdk/util/Input;

    return-object p0
.end method

.method public static values()[Lnet/rtccloud/sdk/util/Input;
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/util/Input;->$VALUES:[Lnet/rtccloud/sdk/util/Input;

    invoke-virtual {v0}, [Lnet/rtccloud/sdk/util/Input;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/rtccloud/sdk/util/Input;

    return-object v0
.end method


# virtual methods
.method public isValid(Ljava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_0

    iget-boolean p0, p0, Lnet/rtccloud/sdk/util/Input;->nullable:Z

    return p0

    :cond_0
    iget-object p0, p0, Lnet/rtccloud/sdk/util/Input;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/util/Input;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/util/regex/Pattern;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
