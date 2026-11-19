.class public final Lcom/networkbench/agent/impl/c/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x2

.field public static final b:I = 0x3

.field public static final c:I = 0x4

.field public static final d:I = 0x5

.field public static final e:I = 0x6

.field public static final f:I = 0x7

.field private static g:Lcom/networkbench/agent/impl/c/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/networkbench/agent/impl/c/i;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/c/i;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/c/h;->g:Lcom/networkbench/agent/impl/c/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/networkbench/agent/impl/c/i;
    .locals 1

    .line 13
    sget-object v0, Lcom/networkbench/agent/impl/c/h;->g:Lcom/networkbench/agent/impl/c/i;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/c/i;->a(Ljava/lang/String;)Lcom/networkbench/agent/impl/c/i;

    move-result-object p0

    return-object p0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 14
    sget-object v0, Lcom/networkbench/agent/impl/c/h;->g:Lcom/networkbench/agent/impl/c/i;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/networkbench/agent/impl/c/i;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Lcom/networkbench/agent/impl/c/i;)V
    .locals 0

    .line 12
    invoke-static {p0}, Lcom/networkbench/agent/impl/c/c;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/c/i;

    sput-object p0, Lcom/networkbench/agent/impl/c/h;->g:Lcom/networkbench/agent/impl/c/i;

    return-void
.end method

.method public static a(Lcom/networkbench/agent/impl/c/l;)V
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/c/h;->g:Lcom/networkbench/agent/impl/c/i;

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/c;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/c/l;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/c/i;->a(Lcom/networkbench/agent/impl/c/l;)V

    return-void
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 1

    .line 16
    sget-object v0, Lcom/networkbench/agent/impl/c/h;->g:Lcom/networkbench/agent/impl/c/i;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/c/i;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 15
    sget-object v0, Lcom/networkbench/agent/impl/c/h;->g:Lcom/networkbench/agent/impl/c/i;

    invoke-virtual {v0, p0, p1}, Lcom/networkbench/agent/impl/c/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 17
    sget-object v0, Lcom/networkbench/agent/impl/c/h;->g:Lcom/networkbench/agent/impl/c/i;

    invoke-virtual {v0, p0, p1, p2}, Lcom/networkbench/agent/impl/c/i;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .line 7
    sget-object v0, Lcom/networkbench/agent/impl/c/h;->g:Lcom/networkbench/agent/impl/c/i;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/c/i;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/c/h;->g:Lcom/networkbench/agent/impl/c/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, p1}, Lcom/networkbench/agent/impl/c/i;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/c/h;->g:Lcom/networkbench/agent/impl/c/i;

    invoke-virtual {v0, p0, p1}, Lcom/networkbench/agent/impl/c/i;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
