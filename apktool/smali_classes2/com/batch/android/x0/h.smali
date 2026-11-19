.class public Lcom/batch/android/x0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/x0/h$b;,
        Lcom/batch/android/x0/h$c;,
        Lcom/batch/android/x0/h$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/nio/charset/Charset;

.field public static final b:Lcom/batch/android/x0/h$b;

.field public static final c:Lcom/batch/android/x0/h$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/batch/android/x0/h;->a:Ljava/nio/charset/Charset;

    new-instance v0, Lcom/batch/android/x0/h$b;

    invoke-direct {v0}, Lcom/batch/android/x0/h$b;-><init>()V

    sput-object v0, Lcom/batch/android/x0/h;->b:Lcom/batch/android/x0/h$b;

    new-instance v0, Lcom/batch/android/x0/h$c;

    invoke-direct {v0}, Lcom/batch/android/x0/h$c;-><init>()V

    sput-object v0, Lcom/batch/android/x0/h;->c:Lcom/batch/android/x0/h$c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/batch/android/x0/b;
    .locals 1

    .line 9
    sget-object v0, Lcom/batch/android/x0/h;->b:Lcom/batch/android/x0/h$b;

    invoke-virtual {v0}, Lcom/batch/android/x0/h$b;->e()Lcom/batch/android/x0/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/batch/android/y0/h;)Lcom/batch/android/x0/j;
    .locals 1

    sget-object v0, Lcom/batch/android/x0/h;->b:Lcom/batch/android/x0/h$b;

    invoke-virtual {v0, p0}, Lcom/batch/android/x0/h$b;->a(Lcom/batch/android/y0/h;)Lcom/batch/android/x0/j;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/io/OutputStream;)Lcom/batch/android/x0/j;
    .locals 1

    .line 7
    sget-object v0, Lcom/batch/android/x0/h;->b:Lcom/batch/android/x0/h$b;

    invoke-virtual {v0, p0}, Lcom/batch/android/x0/h$b;->a(Ljava/io/OutputStream;)Lcom/batch/android/x0/j;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/nio/channels/WritableByteChannel;)Lcom/batch/android/x0/j;
    .locals 1

    .line 8
    sget-object v0, Lcom/batch/android/x0/h;->b:Lcom/batch/android/x0/h$b;

    invoke-virtual {v0, p0}, Lcom/batch/android/x0/h$b;->a(Ljava/nio/channels/WritableByteChannel;)Lcom/batch/android/x0/j;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/batch/android/y0/g;)Lcom/batch/android/x0/o;
    .locals 1

    .line 10
    sget-object v0, Lcom/batch/android/x0/h;->c:Lcom/batch/android/x0/h$c;

    invoke-virtual {v0, p0}, Lcom/batch/android/x0/h$c;->a(Lcom/batch/android/y0/g;)Lcom/batch/android/x0/o;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/batch/android/x0/o;
    .locals 1

    .line 11
    sget-object v0, Lcom/batch/android/x0/h;->c:Lcom/batch/android/x0/h$c;

    invoke-virtual {v0, p0}, Lcom/batch/android/x0/h$c;->a(Ljava/io/InputStream;)Lcom/batch/android/x0/o;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/nio/ByteBuffer;)Lcom/batch/android/x0/o;
    .locals 1

    .line 15
    sget-object v0, Lcom/batch/android/x0/h;->c:Lcom/batch/android/x0/h$c;

    invoke-virtual {v0, p0}, Lcom/batch/android/x0/h$c;->a(Ljava/nio/ByteBuffer;)Lcom/batch/android/x0/o;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/nio/channels/ReadableByteChannel;)Lcom/batch/android/x0/o;
    .locals 1

    .line 12
    sget-object v0, Lcom/batch/android/x0/h;->c:Lcom/batch/android/x0/h$c;

    invoke-virtual {v0, p0}, Lcom/batch/android/x0/h$c;->a(Ljava/nio/channels/ReadableByteChannel;)Lcom/batch/android/x0/o;

    move-result-object p0

    return-object p0
.end method

.method public static a([B)Lcom/batch/android/x0/o;
    .locals 1

    .line 13
    sget-object v0, Lcom/batch/android/x0/h;->c:Lcom/batch/android/x0/h$c;

    invoke-virtual {v0, p0}, Lcom/batch/android/x0/h$c;->a([B)Lcom/batch/android/x0/o;

    move-result-object p0

    return-object p0
.end method

.method public static a([BII)Lcom/batch/android/x0/o;
    .locals 1

    .line 14
    sget-object v0, Lcom/batch/android/x0/h;->c:Lcom/batch/android/x0/h$c;

    invoke-virtual {v0, p0, p1, p2}, Lcom/batch/android/x0/h$c;->a([BII)Lcom/batch/android/x0/o;

    move-result-object p0

    return-object p0
.end method
