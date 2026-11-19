.class public final enum Lcom/batch/android/g0/d$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/g0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/batch/android/g0/d$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/batch/android/g0/d$c;

.field public static final enum c:Lcom/batch/android/g0/d$c;

.field public static final enum d:Lcom/batch/android/g0/d$c;

.field public static final enum e:Lcom/batch/android/g0/d$c;

.field private static final synthetic f:[Lcom/batch/android/g0/d$c;

.field private static final synthetic g:Lkotlin/enums/EnumEntries;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/batch/android/g0/d$c;

    const-string v1, "BOLD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/batch/android/g0/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/g0/d$c;->b:Lcom/batch/android/g0/d$c;

    new-instance v0, Lcom/batch/android/g0/d$c;

    const-string v1, "ITALIC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/batch/android/g0/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/g0/d$c;->c:Lcom/batch/android/g0/d$c;

    new-instance v0, Lcom/batch/android/g0/d$c;

    const-string v1, "UNDERLINE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/batch/android/g0/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/g0/d$c;->d:Lcom/batch/android/g0/d$c;

    new-instance v0, Lcom/batch/android/g0/d$c;

    const-string v1, "STROKE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/batch/android/g0/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/g0/d$c;->e:Lcom/batch/android/g0/d$c;

    invoke-static {}, Lcom/batch/android/g0/d$c;->a()[Lcom/batch/android/g0/d$c;

    move-result-object v0

    sput-object v0, Lcom/batch/android/g0/d$c;->f:[Lcom/batch/android/g0/d$c;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/batch/android/g0/d$c;->g:Lkotlin/enums/EnumEntries;

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

.method private static final synthetic a()[Lcom/batch/android/g0/d$c;
    .locals 4

    sget-object v0, Lcom/batch/android/g0/d$c;->b:Lcom/batch/android/g0/d$c;

    sget-object v1, Lcom/batch/android/g0/d$c;->c:Lcom/batch/android/g0/d$c;

    sget-object v2, Lcom/batch/android/g0/d$c;->d:Lcom/batch/android/g0/d$c;

    sget-object v3, Lcom/batch/android/g0/d$c;->e:Lcom/batch/android/g0/d$c;

    filled-new-array {v0, v1, v2, v3}, [Lcom/batch/android/g0/d$c;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/batch/android/g0/d$c;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/batch/android/g0/d$c;->g:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/g0/d$c;
    .locals 1

    const-class v0, Lcom/batch/android/g0/d$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/batch/android/g0/d$c;

    return-object p0
.end method

.method public static values()[Lcom/batch/android/g0/d$c;
    .locals 1

    sget-object v0, Lcom/batch/android/g0/d$c;->f:[Lcom/batch/android/g0/d$c;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/g0/d$c;

    return-object v0
.end method
