<?php
	require_once('class.db.php');
	$database = new DB();
	
	$query = "select * from pagina order by PaginaId asc";
	$result = $database -> get_results($query);
	$numeropaginas = 0;
	
	if ($_GET == NULL)
		$paginaid = 1;
	else
		$paginaid = $_GET['p'];
	
	foreach ($result as $linha) {
		if($linha['PaginaId'] == $paginaid)
			$pagina = $linha;
		$numeropaginas++;
	}
	
	if(($paginaid<=0)|($paginaid>$numeropaginas))
		$erro = 404;
	else
		$erro = 0;
?>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
			<?php
				echo "<title> DNW - ";
				if($erro == 404){
					echo "Erro 404";
				}else{
					echo $pagina['PaginaTitulo'];
				}
				echo "</title>\n";
			?>
			<meta charset="UTF-8"/>
			<link rel="stylesheet" type="text/css" href="estilo.css"/>
	</head>
	
	<body>
	
		<div id="geral">
		
			<header id="topo">
				<div id="imagem">
					<a href="/tcc/">
						<img src ="img/site/logotopo.png" alt= "Página Inicial" title="Página Inicial"/>
					</a>
				</div>
				<div id="texto">
					<p>DNW</p><br/>
					<p>Maior rede de suporte técnico do BRASIL!!</p>
				</div>
			</header>
		
			<nav id="menu">
				<ul>
				<li><a href="/tcc/">PÁGINA INICIAL</a></li>
				<li><a href="?p=2">SERVIÇOS</a></li>
				<li><a href="/tcc/">HISTÓRIA</a></li>
				<li><a href="?p=3">SUPORTE</a></li>
				</ul>
			</nav>
		
		<section id="centro">
			<?php
				echo "<h1>";
				if($erro==404){
					echo 'Erro 404';
				}else{
					echo $pagina['PaginaTitulo'];
				}
				echo "</h1>\n";
				if($erro==404){
					echo '<p>A página que você está procurando não existe, ou existe mas você não está procurando direito.</p>
					<p>(A não ser que você esteja procurando esta página de erro)</p>';
				}else{
					echo $pagina['PaginaConteudo'];
				}
				echo "<h1>";
				if($erro==404){
					echo 'Erro 404';
				}else{
					echo $pagina['PaginaTitulo'];
				}
				echo "</h1>\n";
			?>
		</section>
				
		<footer id="rodape">
			<img src="img/site/logotopo.png" alt="DNW" title="DNW" />
			<div id="texto">
				<p>Design por DNW</p>
				<p>Copyright © 2015, todos os direitos reservados</p>
			</div>
		</footer>
	</div>
	</body>
</html>