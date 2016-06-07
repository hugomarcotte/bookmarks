class Bookmarks extends React.Component {
  constructor(props, context) {
    super(props, context);
    this.state = {bookmarks: ''};
  };

  componentDidMount() { 
    $.getJSON('/api/bookmarks', (response) => { this.setState({ bookmarks: response.bookmarks }) });
  }
  
  render () {
    debugger;
    return (
      <div>
        <h2> Rails React starter </h2>
        <div> {this.state.bookmarks} </div>
      </div>
    );
  }
}

