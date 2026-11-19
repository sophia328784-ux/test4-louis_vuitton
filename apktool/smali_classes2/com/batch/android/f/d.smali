.class public final Lcom/batch/android/f/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/String;

.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/String;

.field public static final j:Ljava/lang/String;

.field public static final k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/batch/android/f/d;->a(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/st/%s"

    invoke-static {v1, v2, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/batch/android/f/d;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/batch/android/f/d;->a(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/tr/%s"

    invoke-static {v2, v3, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/batch/android/f/d;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/batch/android/f/d;->a(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/t/%s"

    invoke-static {v2, v3, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/batch/android/f/d;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/batch/android/f/d;->a(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/ats/%s"

    invoke-static {v2, v3, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/batch/android/f/d;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/batch/android/f/d;->a(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/atc/%s"

    invoke-static {v2, v3, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/batch/android/f/d;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/batch/android/f/d;->a(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/inapp/%s"

    invoke-static {v2, v3, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/batch/android/f/d;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/batch/android/f/d;->a(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/inbox/%s/%s/%s"

    invoke-static {v2, v3, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/batch/android/f/d;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/batch/android/f/d;->a(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/inbox/%s/sync/%s/%s"

    invoke-static {v2, v3, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/batch/android/f/d;->h:Ljava/lang/String;

    sget-object v0, Lcom/batch/android/f/b;->c:Lcom/batch/android/f/b;

    invoke-static {v0, v1}, Lcom/batch/android/f/d;->a(Lcom/batch/android/f/b;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/batch/android/f/d;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/batch/android/f/d;->a(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/inapp_jit_mep/%s"

    invoke-static {v2, v3, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/batch/android/f/d;->j:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/batch/android/f/d;->a(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/inapp_jit_cep/%s"

    invoke-static {v1, v2, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/batch/android/f/d;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/batch/android/f/b;Z)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/batch/android/f/c;

    invoke-direct {v0}, Lcom/batch/android/f/c;-><init>()V

    invoke-static {v0}, Lcom/batch/android/n/h;->a(Lcom/batch/android/f/f;)Lcom/batch/android/f/a;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-interface {v0}, Lcom/batch/android/f/e;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p0, p1}, Lcom/batch/android/f/e;->a(Lcom/batch/android/f/b;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Z)Ljava/lang/String;
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/batch/android/f/b;->b:Lcom/batch/android/f/b;

    invoke-static {v1, p0}, Lcom/batch/android/f/d;->a(Lcom/batch/android/f/b;Z)Ljava/lang/String;

    move-result-object p0

    const-string v1, "/a/3.1.1"

    .line 26
    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
