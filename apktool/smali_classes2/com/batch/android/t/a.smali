.class public final enum Lcom/batch/android/t/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/t/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/batch/android/t/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lcom/batch/android/t/a$a;

.field public static final enum d:Lcom/batch/android/t/a;

.field public static final enum e:Lcom/batch/android/t/a;

.field public static final enum f:Lcom/batch/android/t/a;

.field public static final enum g:Lcom/batch/android/t/a;

.field public static final enum h:Lcom/batch/android/t/a;

.field public static final enum i:Lcom/batch/android/t/a;

.field public static final enum j:Lcom/batch/android/t/a;

.field private static final synthetic k:[Lcom/batch/android/t/a;

.field private static final synthetic l:Lkotlin/enums/EnumEntries;


# instance fields
.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/batch/android/t/a;

    const-string v1, "SUNDAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/batch/android/t/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/t/a;->d:Lcom/batch/android/t/a;

    new-instance v0, Lcom/batch/android/t/a;

    const-string v1, "MONDAY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/batch/android/t/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/t/a;->e:Lcom/batch/android/t/a;

    new-instance v0, Lcom/batch/android/t/a;

    const-string v1, "TUESDAY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/batch/android/t/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/t/a;->f:Lcom/batch/android/t/a;

    new-instance v0, Lcom/batch/android/t/a;

    const-string v1, "WEDNESDAY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/batch/android/t/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/t/a;->g:Lcom/batch/android/t/a;

    new-instance v0, Lcom/batch/android/t/a;

    const-string v1, "THURSDAY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/batch/android/t/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/t/a;->h:Lcom/batch/android/t/a;

    new-instance v0, Lcom/batch/android/t/a;

    const-string v1, "FRIDAY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/batch/android/t/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/t/a;->i:Lcom/batch/android/t/a;

    new-instance v0, Lcom/batch/android/t/a;

    const-string v1, "SATURDAY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/batch/android/t/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/batch/android/t/a;->j:Lcom/batch/android/t/a;

    invoke-static {}, Lcom/batch/android/t/a;->a()[Lcom/batch/android/t/a;

    move-result-object v0

    sput-object v0, Lcom/batch/android/t/a;->k:[Lcom/batch/android/t/a;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/batch/android/t/a;->l:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/batch/android/t/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/batch/android/t/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/batch/android/t/a;->c:Lcom/batch/android/t/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/batch/android/t/a;->b:I

    return-void
.end method

.method public static final a(I)Lcom/batch/android/t/a;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 20
    sget-object v0, Lcom/batch/android/t/a;->c:Lcom/batch/android/t/a$a;

    invoke-virtual {v0, p0}, Lcom/batch/android/t/a$a;->a(I)Lcom/batch/android/t/a;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/util/Calendar;)Lcom/batch/android/t/a;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 19
    sget-object v0, Lcom/batch/android/t/a;->c:Lcom/batch/android/t/a$a;

    invoke-virtual {v0, p0}, Lcom/batch/android/t/a$a;->a(Ljava/util/Calendar;)Lcom/batch/android/t/a;

    move-result-object p0

    return-object p0
.end method

.method private static final synthetic a()[Lcom/batch/android/t/a;
    .locals 7

    sget-object v0, Lcom/batch/android/t/a;->d:Lcom/batch/android/t/a;

    sget-object v1, Lcom/batch/android/t/a;->e:Lcom/batch/android/t/a;

    sget-object v2, Lcom/batch/android/t/a;->f:Lcom/batch/android/t/a;

    sget-object v3, Lcom/batch/android/t/a;->g:Lcom/batch/android/t/a;

    sget-object v4, Lcom/batch/android/t/a;->h:Lcom/batch/android/t/a;

    sget-object v5, Lcom/batch/android/t/a;->i:Lcom/batch/android/t/a;

    sget-object v6, Lcom/batch/android/t/a;->j:Lcom/batch/android/t/a;

    filled-new-array/range {v0 .. v6}, [Lcom/batch/android/t/a;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/batch/android/t/a;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/batch/android/t/a;->l:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/t/a;
    .locals 1

    const-class v0, Lcom/batch/android/t/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/batch/android/t/a;

    return-object p0
.end method

.method public static values()[Lcom/batch/android/t/a;
    .locals 1

    sget-object v0, Lcom/batch/android/t/a;->k:[Lcom/batch/android/t/a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/t/a;

    return-object v0
.end method


# virtual methods
.method public final c()I
    .locals 0

    iget p0, p0, Lcom/batch/android/t/a;->b:I

    return p0
.end method
