.class public final Lcom/batch/android/d0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/d0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/batch/android/d0/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/batch/android/BatchMessage;Lcom/batch/android/g0/a;)Lcom/batch/android/d0/a;
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/batch/android/d0/a;

    invoke-direct {p0}, Lcom/batch/android/d0/a;-><init>()V

    invoke-static {p0, p1, p2}, Lcom/batch/android/d0/a;->a(Lcom/batch/android/d0/a;Lcom/batch/android/BatchMessage;Lcom/batch/android/g0/a;)V

    return-object p0
.end method
