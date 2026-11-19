.class public final Lcom/batch/android/n/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/batch/android/n/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/batch/android/n/m;

    invoke-direct {v0}, Lcom/batch/android/n/m;-><init>()V

    sput-object v0, Lcom/batch/android/n/m;->a:Lcom/batch/android/n/m;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/u/c;
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/batch/android/u/c;->b(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/u/c;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method
