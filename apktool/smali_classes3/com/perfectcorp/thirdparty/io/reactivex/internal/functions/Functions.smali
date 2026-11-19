.class public abstract Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions$p;,
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions$q;,
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions$f;,
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions$e;,
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions$h;,
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions$l;,
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions$b;,
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions$a;,
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions$i;,
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions$c;,
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions$d;,
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions$m;
    }
.end annotation


# static fields
.field public static final a:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

.field public static final b:Ljava/lang/Runnable;

.field public static final c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

.field public static final d:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

.field public static final e:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions$l;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->a:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions$h;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions$h;-><init>()V

    sput-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->b:Ljava/lang/Runnable;

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions$e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions$f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->d:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions$q;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->e:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions$p;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions$p;-><init>()V

    return-void
.end method

.method public static a(Lcom/perfectcorp/perfectlib/z0;)Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions$b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions$b;->b:Lcom/perfectcorp/perfectlib/z0;

    return-object v0
.end method

.method public static b(Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiFunction;)Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiFunction;

    return-object v0
.end method

.method public static c(Ljava/lang/Class;)Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions$d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions$d;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public static d(I)Ljava/util/concurrent/Callable;
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions$c;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions$c;-><init>(I)V

    return-object v0
.end method

.method public static e(Ljava/lang/Object;)Ljava/util/concurrent/Callable;
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions$m;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions$m;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static f(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions$i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions$i;->b:Ljava/lang/Object;

    return-object v0
.end method
