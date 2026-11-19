.class public final enum Lcom/batch/android/g0/d$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/g0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/g0/d$e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/batch/android/g0/d$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/batch/android/g0/d$e;

.field public static final enum c:Lcom/batch/android/g0/d$e;

.field public static final enum d:Lcom/batch/android/g0/d$e;

.field private static final synthetic e:[Lcom/batch/android/g0/d$e;

.field private static final synthetic f:Lkotlin/enums/EnumEntries;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/batch/android/g0/d$e;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/batch/android/g0/d$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/g0/d$e;->b:Lcom/batch/android/g0/d$e;

    new-instance v0, Lcom/batch/android/g0/d$e;

    const-string v1, "CENTER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/batch/android/g0/d$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/g0/d$e;->c:Lcom/batch/android/g0/d$e;

    new-instance v0, Lcom/batch/android/g0/d$e;

    const-string v1, "RIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/batch/android/g0/d$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/g0/d$e;->d:Lcom/batch/android/g0/d$e;

    invoke-static {}, Lcom/batch/android/g0/d$e;->a()[Lcom/batch/android/g0/d$e;

    move-result-object v0

    sput-object v0, Lcom/batch/android/g0/d$e;->e:[Lcom/batch/android/g0/d$e;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/batch/android/g0/d$e;->f:Lkotlin/enums/EnumEntries;

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

.method private static final synthetic a()[Lcom/batch/android/g0/d$e;
    .locals 3

    sget-object v0, Lcom/batch/android/g0/d$e;->b:Lcom/batch/android/g0/d$e;

    sget-object v1, Lcom/batch/android/g0/d$e;->c:Lcom/batch/android/g0/d$e;

    sget-object v2, Lcom/batch/android/g0/d$e;->d:Lcom/batch/android/g0/d$e;

    filled-new-array {v0, v1, v2}, [Lcom/batch/android/g0/d$e;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/batch/android/g0/d$e;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/batch/android/g0/d$e;->f:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/g0/d$e;
    .locals 1

    const-class v0, Lcom/batch/android/g0/d$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/batch/android/g0/d$e;

    return-object p0
.end method

.method public static values()[Lcom/batch/android/g0/d$e;
    .locals 1

    sget-object v0, Lcom/batch/android/g0/d$e;->e:[Lcom/batch/android/g0/d$e;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/g0/d$e;

    return-object v0
.end method


# virtual methods
.method public final c()I
    .locals 2

    sget-object v0, Lcom/batch/android/g0/d$e$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const p0, 0x800005

    return p0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0

    :cond_2
    const p0, 0x800003

    return p0
.end method
