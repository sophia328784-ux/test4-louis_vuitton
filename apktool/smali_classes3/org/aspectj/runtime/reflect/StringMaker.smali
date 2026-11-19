.class Lorg/aspectj/runtime/reflect/StringMaker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lorg/aspectj/runtime/reflect/StringMaker;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/aspectj/runtime/reflect/StringMaker;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/aspectj/runtime/reflect/StringMaker;->a:Z

    iput-boolean v1, v0, Lorg/aspectj/runtime/reflect/StringMaker;->b:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/aspectj/runtime/reflect/StringMaker;->c:Z

    iput-boolean v1, v0, Lorg/aspectj/runtime/reflect/StringMaker;->d:Z

    sput-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->e:Lorg/aspectj/runtime/reflect/StringMaker;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/aspectj/runtime/reflect/StringMaker;->a:Z

    iput-boolean v1, v0, Lorg/aspectj/runtime/reflect/StringMaker;->b:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/aspectj/runtime/reflect/StringMaker;->c:Z

    iput-boolean v1, v0, Lorg/aspectj/runtime/reflect/StringMaker;->d:Z

    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "ANONYMOUS"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/aspectj/runtime/reflect/StringMaker;->a(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "[]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 p0, 0x24

    const/16 v0, 0x2e

    if-eqz p2, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
