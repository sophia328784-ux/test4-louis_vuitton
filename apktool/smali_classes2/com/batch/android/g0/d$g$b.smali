.class public final enum Lcom/batch/android/g0/d$g$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/g0/d$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/batch/android/g0/d$g$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/batch/android/g0/d$g$b;

.field public static final enum c:Lcom/batch/android/g0/d$g$b;

.field public static final enum d:Lcom/batch/android/g0/d$g$b;

.field public static final enum e:Lcom/batch/android/g0/d$g$b;

.field private static final synthetic f:[Lcom/batch/android/g0/d$g$b;

.field private static final synthetic g:Lkotlin/enums/EnumEntries;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/batch/android/g0/d$g$b;

    const-string v1, "PIXEL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/batch/android/g0/d$g$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/g0/d$g$b;->b:Lcom/batch/android/g0/d$g$b;

    new-instance v0, Lcom/batch/android/g0/d$g$b;

    const-string v1, "PERCENTAGE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/batch/android/g0/d$g$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/g0/d$g$b;->c:Lcom/batch/android/g0/d$g$b;

    new-instance v0, Lcom/batch/android/g0/d$g$b;

    const-string v1, "AUTO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/batch/android/g0/d$g$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/g0/d$g$b;->d:Lcom/batch/android/g0/d$g$b;

    new-instance v0, Lcom/batch/android/g0/d$g$b;

    const-string v1, "FILL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/batch/android/g0/d$g$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/g0/d$g$b;->e:Lcom/batch/android/g0/d$g$b;

    invoke-static {}, Lcom/batch/android/g0/d$g$b;->a()[Lcom/batch/android/g0/d$g$b;

    move-result-object v0

    sput-object v0, Lcom/batch/android/g0/d$g$b;->f:[Lcom/batch/android/g0/d$g$b;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/batch/android/g0/d$g$b;->g:Lkotlin/enums/EnumEntries;

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

.method private static final synthetic a()[Lcom/batch/android/g0/d$g$b;
    .locals 4

    sget-object v0, Lcom/batch/android/g0/d$g$b;->b:Lcom/batch/android/g0/d$g$b;

    sget-object v1, Lcom/batch/android/g0/d$g$b;->c:Lcom/batch/android/g0/d$g$b;

    sget-object v2, Lcom/batch/android/g0/d$g$b;->d:Lcom/batch/android/g0/d$g$b;

    sget-object v3, Lcom/batch/android/g0/d$g$b;->e:Lcom/batch/android/g0/d$g$b;

    filled-new-array {v0, v1, v2, v3}, [Lcom/batch/android/g0/d$g$b;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/batch/android/g0/d$g$b;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/batch/android/g0/d$g$b;->g:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/g0/d$g$b;
    .locals 1

    const-class v0, Lcom/batch/android/g0/d$g$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/batch/android/g0/d$g$b;

    return-object p0
.end method

.method public static values()[Lcom/batch/android/g0/d$g$b;
    .locals 1

    sget-object v0, Lcom/batch/android/g0/d$g$b;->f:[Lcom/batch/android/g0/d$g$b;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/g0/d$g$b;

    return-object v0
.end method
