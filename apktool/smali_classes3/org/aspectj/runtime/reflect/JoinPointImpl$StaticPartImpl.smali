.class Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/aspectj/lang/JoinPoint$StaticPart;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/aspectj/runtime/reflect/JoinPointImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StaticPartImpl"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lorg/aspectj/lang/Signature;

.field public final c:Lorg/aspectj/lang/reflect/SourceLocation;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/aspectj/lang/Signature;Lorg/aspectj/lang/reflect/SourceLocation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;->a:Ljava/lang/String;

    iput-object p3, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;->b:Lorg/aspectj/lang/Signature;

    iput-object p4, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;->c:Lorg/aspectj/lang/reflect/SourceLocation;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    sget-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->e:Lorg/aspectj/runtime/reflect/StringMaker;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x2d

    iget-object v2, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/aspectj/runtime/reflect/JoinPointImpl$StaticPartImpl;->b:Lorg/aspectj/lang/Signature;

    check-cast p0, Lorg/aspectj/runtime/reflect/SignatureImpl;

    invoke-virtual {p0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
