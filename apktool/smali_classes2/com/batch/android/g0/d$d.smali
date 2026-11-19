.class public final enum Lcom/batch/android/g0/d$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/g0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/batch/android/g0/d$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/batch/android/g0/d$d;

.field public static final enum c:Lcom/batch/android/g0/d$d;

.field public static final enum d:Lcom/batch/android/g0/d$d;

.field private static final synthetic e:[Lcom/batch/android/g0/d$d;

.field private static final synthetic f:Lkotlin/enums/EnumEntries;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/batch/android/g0/d$d;

    const-string v1, "MODAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/batch/android/g0/d$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/g0/d$d;->b:Lcom/batch/android/g0/d$d;

    new-instance v0, Lcom/batch/android/g0/d$d;

    const-string v1, "FULLSCREEN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/batch/android/g0/d$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/g0/d$d;->c:Lcom/batch/android/g0/d$d;

    new-instance v0, Lcom/batch/android/g0/d$d;

    const-string v1, "WEBVIEW"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/batch/android/g0/d$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/g0/d$d;->d:Lcom/batch/android/g0/d$d;

    invoke-static {}, Lcom/batch/android/g0/d$d;->a()[Lcom/batch/android/g0/d$d;

    move-result-object v0

    sput-object v0, Lcom/batch/android/g0/d$d;->e:[Lcom/batch/android/g0/d$d;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/batch/android/g0/d$d;->f:Lkotlin/enums/EnumEntries;

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

.method private static final synthetic a()[Lcom/batch/android/g0/d$d;
    .locals 3

    sget-object v0, Lcom/batch/android/g0/d$d;->b:Lcom/batch/android/g0/d$d;

    sget-object v1, Lcom/batch/android/g0/d$d;->c:Lcom/batch/android/g0/d$d;

    sget-object v2, Lcom/batch/android/g0/d$d;->d:Lcom/batch/android/g0/d$d;

    filled-new-array {v0, v1, v2}, [Lcom/batch/android/g0/d$d;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/batch/android/g0/d$d;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/batch/android/g0/d$d;->f:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/g0/d$d;
    .locals 1

    const-class v0, Lcom/batch/android/g0/d$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/batch/android/g0/d$d;

    return-object p0
.end method

.method public static values()[Lcom/batch/android/g0/d$d;
    .locals 1

    sget-object v0, Lcom/batch/android/g0/d$d;->e:[Lcom/batch/android/g0/d$d;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/g0/d$d;

    return-object v0
.end method
