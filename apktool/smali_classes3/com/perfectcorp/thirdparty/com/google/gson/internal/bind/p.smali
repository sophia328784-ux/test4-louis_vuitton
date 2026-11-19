.class public abstract Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/p$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/perfectcorp/thirdparty/com/google/gson/k;

.field public static final b:Lcom/perfectcorp/thirdparty/com/google/gson/l;

.field public static final c:Lcom/perfectcorp/thirdparty/com/google/gson/l;

.field public static final d:Lcom/perfectcorp/thirdparty/com/google/gson/k;

.field public static final e:Lcom/perfectcorp/thirdparty/com/google/gson/l;

.field public static final f:Lcom/perfectcorp/thirdparty/com/google/gson/k;

.field public static final g:Lcom/perfectcorp/thirdparty/com/google/gson/l;

.field public static final h:Lcom/perfectcorp/thirdparty/com/google/gson/l;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/q;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/k;-><init>()V

    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/w;

    invoke-direct {v1}, Lcom/perfectcorp/thirdparty/com/google/gson/k;-><init>()V

    sput-object v1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/p;->a:Lcom/perfectcorp/thirdparty/com/google/gson/k;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Boolean;

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/p;->b(Ljava/lang/Class;Ljava/lang/Class;Lcom/perfectcorp/thirdparty/com/google/gson/k;)Lcom/perfectcorp/thirdparty/com/google/gson/l;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/p;->b:Lcom/perfectcorp/thirdparty/com/google/gson/l;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/x;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/k;-><init>()V

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Integer;

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/p;->b(Ljava/lang/Class;Ljava/lang/Class;Lcom/perfectcorp/thirdparty/com/google/gson/k;)Lcom/perfectcorp/thirdparty/com/google/gson/l;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/p;->c:Lcom/perfectcorp/thirdparty/com/google/gson/l;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/y;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/k;-><init>()V

    sput-object v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/p;->d:Lcom/perfectcorp/thirdparty/com/google/gson/k;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/z;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/k;-><init>()V

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/aa;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/k;-><init>()V

    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/r;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const-class v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/r;->a:Ljava/lang/Class;

    iput-object v0, v1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/r;->b:Lcom/perfectcorp/thirdparty/com/google/gson/k;

    sput-object v1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/p;->e:Lcom/perfectcorp/thirdparty/com/google/gson/l;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/ab;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/k;-><init>()V

    sput-object v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/p;->f:Lcom/perfectcorp/thirdparty/com/google/gson/k;

    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/t;

    invoke-direct {v1, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/t;-><init>(Lcom/perfectcorp/thirdparty/com/google/gson/k;)V

    sput-object v1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/p;->g:Lcom/perfectcorp/thirdparty/com/google/gson/l;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/ac;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/p;->h:Lcom/perfectcorp/thirdparty/com/google/gson/l;

    return-void
.end method

.method public static a(Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;Lcom/perfectcorp/thirdparty/com/google/gson/k;)Lcom/perfectcorp/thirdparty/com/google/gson/l;
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/ad;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/ad;->a:Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;

    iput-object p1, v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/ad;->b:Lcom/perfectcorp/thirdparty/com/google/gson/k;

    return-object v0
.end method

.method public static b(Ljava/lang/Class;Ljava/lang/Class;Lcom/perfectcorp/thirdparty/com/google/gson/k;)Lcom/perfectcorp/thirdparty/com/google/gson/l;
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/s;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/s;->a:Ljava/lang/Class;

    iput-object p1, v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/s;->b:Ljava/lang/Class;

    iput-object p2, v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/s;->c:Lcom/perfectcorp/thirdparty/com/google/gson/k;

    return-object v0
.end method
