document.getElementById('open-part-modal').addEventListener('click', function() {
    // Abrir o modal
    document.getElementById('part-modal').style.display = 'block';
});

// Adicione um evento para fechar o modal (por exemplo, clicando fora dele)
document.getElementById('part-modal').addEventListener('click', function(e) {
    if (e.target === this) {
        // Fecha o modal se o usuário clicar fora dele
        this.style.display = 'none';
    }
});
