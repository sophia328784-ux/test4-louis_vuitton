.class Lorg/aspectj/runtime/reflect/MethodSignatureImpl;
.super Lorg/aspectj/runtime/reflect/CodeSignatureImpl;
.source "SourceFile"

# interfaces
.implements Lorg/aspectj/lang/reflect/MethodSignature;


# instance fields
.field public k:Ljava/lang/Class;


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 7

    sget-object v0, Lorg/aspectj/runtime/reflect/StringMaker;->e:Lorg/aspectj/runtime/reflect/StringMaker;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget v2, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->a:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v4}, Lorg/aspectj/runtime/reflect/SignatureImpl;->b(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->a:I

    :cond_0
    iget v2, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->a:I

    iget-boolean v3, v0, Lorg/aspectj/runtime/reflect/StringMaker;->c:Z

    const-string v5, " "

    const-string v6, ""

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v2, v0, Lorg/aspectj/runtime/reflect/StringMaker;->b:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/aspectj/runtime/reflect/MethodSignatureImpl;->k:Ljava/lang/Class;

    if-nez v2, :cond_4

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lorg/aspectj/runtime/reflect/SignatureImpl;->b(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->g:Ljava/lang/ClassLoader;

    if-nez v3, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    iput-object v3, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->g:Ljava/lang/ClassLoader;

    :cond_3
    iget-object v3, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->g:Ljava/lang/ClassLoader;

    invoke-static {v3, v2}, Lorg/aspectj/runtime/reflect/Factory;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lorg/aspectj/runtime/reflect/MethodSignatureImpl;->k:Ljava/lang/Class;

    :cond_4
    iget-object v2, p0, Lorg/aspectj/runtime/reflect/MethodSignatureImpl;->k:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-boolean v6, v0, Lorg/aspectj/runtime/reflect/StringMaker;->a:Z

    invoke-static {v2, v3, v6}, Lorg/aspectj/runtime/reflect/StringMaker;->a(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    iget-boolean v2, v0, Lorg/aspectj/runtime/reflect/StringMaker;->b:Z

    if-eqz v2, :cond_6

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    iget-object v2, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->d:Ljava/lang/Class;

    const/4 v3, 0x2

    if-nez v2, :cond_8

    invoke-virtual {p0, v3}, Lorg/aspectj/runtime/reflect/SignatureImpl;->b(I)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->g:Ljava/lang/ClassLoader;

    if-nez v5, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    iput-object v5, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->g:Ljava/lang/ClassLoader;

    :cond_7
    iget-object v5, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->g:Ljava/lang/ClassLoader;

    invoke-static {v5, v2}, Lorg/aspectj/runtime/reflect/Factory;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->d:Ljava/lang/Class;

    :cond_8
    iget-object v2, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->d:Ljava/lang/Class;

    iget-object v5, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->c:Ljava/lang/String;

    if-nez v5, :cond_b

    if-nez v2, :cond_a

    invoke-virtual {p0, v3}, Lorg/aspectj/runtime/reflect/SignatureImpl;->b(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->g:Ljava/lang/ClassLoader;

    if-nez v5, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    iput-object v5, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->g:Ljava/lang/ClassLoader;

    :cond_9
    iget-object v5, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->g:Ljava/lang/ClassLoader;

    invoke-static {v5, v3}, Lorg/aspectj/runtime/reflect/Factory;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->d:Ljava/lang/Class;

    :cond_a
    iget-object v3, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->d:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->c:Ljava/lang/String;

    :cond_b
    iget-object v3, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->c:Ljava/lang/String;

    iget-boolean v5, v0, Lorg/aspectj/runtime/reflect/StringMaker;->d:Z

    invoke-static {v2, v3, v5}, Lorg/aspectj/runtime/reflect/StringMaker;->a(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->b:Ljava/lang/String;

    if-nez v2, :cond_c

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/aspectj/runtime/reflect/SignatureImpl;->b(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->b:Ljava/lang/String;

    :cond_c
    iget-object v2, p0, Lorg/aspectj/runtime/reflect/SignatureImpl;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/aspectj/runtime/reflect/CodeSignatureImpl;->i:[Ljava/lang/Class;

    if-nez v2, :cond_d

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lorg/aspectj/runtime/reflect/SignatureImpl;->c(I)[Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lorg/aspectj/runtime/reflect/CodeSignatureImpl;->i:[Ljava/lang/Class;

    :cond_d
    iget-object v2, p0, Lorg/aspectj/runtime/reflect/CodeSignatureImpl;->i:[Ljava/lang/Class;

    if-nez v2, :cond_e

    goto :goto_2

    :cond_e
    iget-boolean v3, v0, Lorg/aspectj/runtime/reflect/StringMaker;->b:Z

    if-nez v3, :cond_10

    array-length v0, v2

    if-nez v0, :cond_f

    const-string v0, "()"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_f
    const-string v0, "(..)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_10
    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    array-length v3, v2

    if-ge v4, v3, :cond_12

    if-lez v4, :cond_11

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_11
    aget-object v3, v2, v4

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, v0, Lorg/aspectj/runtime/reflect/StringMaker;->a:Z

    invoke-static {v3, v5, v6}, Lorg/aspectj/runtime/reflect/StringMaker;->a(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_12
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    iget-object v0, p0, Lorg/aspectj/runtime/reflect/CodeSignatureImpl;->j:[Ljava/lang/Class;

    if-nez v0, :cond_13

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/reflect/SignatureImpl;->c(I)[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/aspectj/runtime/reflect/CodeSignatureImpl;->j:[Ljava/lang/Class;

    :cond_13
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
